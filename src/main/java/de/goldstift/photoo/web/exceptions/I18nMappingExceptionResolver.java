/**
 *
 */
package de.goldstift.photoo.web.exceptions;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

/**
 * This class uses the specified {@link #messageMapping} to resolve a well-formed, defined message
 * for the caught exception from "application_XX.properties" files. The #exceptionMappings are then
 * used to resolve a specific view name for the caught exception.
 * The default behaviour of DispatcherServlet is to propagate all exceptions to the servlet
 * container: this is used as fallback behaviour here.<br>
 *
 * <strong>Usage example:</strong>
 * <pre>
    &lt;bean
        class="de.goldstift.photoo.web.exceptions.I18nMappingExceptionResolver"
        p:defaultErrorView="uncaughtException" p:defaultMessage="exceptions.unexpected"&gt;

        &lt;!-- NOTE: 'exceptionMappings' are used to resolve view names in the super class --&gt;
        &lt;property name="exceptionMappings"&gt;
            &lt;props&gt;
                &lt;prop key=".AnalyzedApplicationException"&gt;uncaughtException&lt;/prop&gt;
                &lt;prop key=".NoSuchRequestHandlingMethodException"&gt;resourceNotFound&lt;/prop&gt;
                &lt;prop key=".TypeMismatchException"&gt;resourceNotFound&lt;/prop&gt;
                &lt;prop key=".MissingServletRequestParameterException"&gt;resourceNotFound&lt;/prop&gt;
            &lt;/props&gt;
        &lt;/property&gt;
        &lt;property name="messageMapping"&gt;
            &lt;map&gt;
                &lt;!-- NOTE: the given 'entry values' have to be defined in the several "application.properties" files! --&gt;
                &lt;entry value="exceptions.db.duplicateentry"&gt;
                    &lt;key&gt;
                        &lt;bean class="de.goldstift.photoo.web.exceptions.MessageMatchCriteria" p:classNamePart="ConstraintViolationException" p:messagePart="Duplicate entry"/&gt;
                    &lt;/key&gt;
                &lt;/entry&gt;
                &lt;entry value="exceptions.db.constraint"&gt;
                    &lt;key&gt;
                        &lt;bean class="de.goldstift.photoo.web.exceptions.MessageMatchCriteria" p:classNamePart="ConstraintViolationException"/&gt;
                    &lt;/key&gt;
                &lt;/entry&gt;
            &lt;/map&gt;
        &lt;/property&gt;
    &lt;/bean&gt;
 * </pre>
 *
 * @author ahe
 * @since 26.01.2011 23:11:56
 */
public class I18nMappingExceptionResolver extends SimpleMappingExceptionResolver
{

    private static final Logger LOG = LoggerFactory.getLogger(I18nMappingExceptionResolver.class);
    private Map<MessageMatchCriteria, String> messageMapping;
    private String defaultMessage;

    /**
     * Overrides method of the super class to resolve a specific view name for the caught Exception.
     * If no specific
     *
     * {@inheritDoc}
     *
     * @see org.springframework.web.servlet.handler.SimpleMappingExceptionResolver#getModelAndView(java
     *      .lang.String, java.lang.Exception, javax.servlet.http.HttpServletRequest)
     */
    @Override
    protected ModelAndView getModelAndView(final String viewName, final Exception ex, final HttpServletRequest request)
    {
        Throwable rootCause = getRootCause(ex);
        final String message;
        if (rootCause instanceof Exception)
        {
            message = getMessageByClassName((Exception) rootCause, rootCause.getMessage());
        } else {
            message = getMessageByClassName(ex, ex.getMessage());
        }
        final AnalyzedApplicationException analyzedEx = new AnalyzedApplicationException(message,
                ex);
        analyzedEx.setRootCause(rootCause);
        return super.getModelAndView(viewName, analyzedEx, request);
    }

    private String getMessageByClassName(final Exception ex, final String message)
    {
        for (MessageMatchCriteria key : messageMapping.keySet())
        {
            if (getDepth(key.getClassNamePart(), ex) > -1
                    // either there is no MessagePart or it must be contained in the message!
                    && (!StringUtils.hasText(key.getMessagePart()) || message.contains(key
                            .getMessagePart())))
            {
                return messageMapping.get(key);
            }
        }
        LOG.warn("No message mapping for the criteria found! message: '" + message + "' - Exception: ", ex);
        return defaultMessage;
    }

    /**
     * Uses redundant calls to retrieve an exception's root cause.
     *
     * @param exception - the exception whose cause shall be retrieved
     * @return the root cause
     */
    private Throwable getRootCause(final Throwable exception)
    {
        Assert.notNull(exception, "Specified exception must not be null");

        if (exception.getCause() != null)
        {
            return getRootCause(exception.getCause());
        }
        return exception;
    }

    /**
     * @param messageMapping the messageMapping to set
     */
    public final void setMessageMapping(final Map<MessageMatchCriteria, String> messageMapping)
    {
        this.messageMapping = messageMapping;
    }

    /**
     * @param defaultMessage the defaultMessage to set
     */
    public final void setDefaultMessage(final String defaultMessage)
    {
        this.defaultMessage = defaultMessage;
    }

}
