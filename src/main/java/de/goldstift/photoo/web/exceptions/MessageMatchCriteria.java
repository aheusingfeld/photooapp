/**
 *
 */
package de.goldstift.photoo.web.exceptions;

/**
 * A MessageMatchCriteria describes what is to check to determine whether a message key shall be
 * used to translate a message.
 *
 * @author ahe
 * @since 26.01.2011 23:53:45
 */
public class MessageMatchCriteria
{
    private String classNamePart;
    private String messagePart;

    /**
     * @return the classNamePart
     */
    public final String getClassNamePart()
    {
        return classNamePart;
    }

    /**
     * @param classNamePart the classNamePart to set
     */
    public final void setClassNamePart(String classNamePart)
    {
        this.classNamePart = classNamePart;
    }

    /**
     * @return the messagePart
     */
    public final String getMessagePart()
    {
        return messagePart;
    }

    /**
     * @param messagePart the messagePart to set
     */
    public final void setMessagePart(String messagePart)
    {
        this.messagePart = messagePart;
    }

}
