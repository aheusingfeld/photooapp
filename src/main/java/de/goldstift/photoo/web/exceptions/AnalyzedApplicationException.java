/**
 *
 */
package de.goldstift.photoo.web.exceptions;

/**
 * TODO describe type AnalyzedApplicationException
 * @author ahe
 * @since 26.01.2011 23:17:04
 */
public class AnalyzedApplicationException extends Exception
{

    /**
     * Version of this class file.
     */
    private static final long serialVersionUID = 1L;

    private Throwable rootCause;
    private String msgCode;

    public AnalyzedApplicationException()
    {
        super();
    }

    public AnalyzedApplicationException(String arg0, Throwable arg1)
    {
        super(arg0, arg1);
    }
    public AnalyzedApplicationException(String arg0)
    {
        super(arg0);
    }
    public AnalyzedApplicationException(Throwable arg0)
    {
        super(arg0);
    }

    /**
     * @return the originalException
     */
    public final Throwable getOriginalException()
    {
        return getCause();
    }
    /**
     * @return the rootCause
     */
    public final Throwable getRootCause()
    {
        return rootCause;
    }
    /**
     * @param rootCause the rootCause to set
     */
    public final void setRootCause(Throwable rootCause)
    {
        this.rootCause = rootCause;
    }
    /**
     * @return the msgCode
     */
    public final String getMsgCode()
    {
        return msgCode;
    }
    /**
     * @param msgCode the msgCode to set
     */
    public final void setMsgCode(String msgCode)
    {
        this.msgCode = msgCode;
    }

}
