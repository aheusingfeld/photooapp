package de.goldstift.photoo.domain;

import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.entity.RooJpaEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
public class PhotoFile {

    @ManyToOne(fetch = FetchType.EAGER)
    private Folder folder;

    @NotNull
    @Size(min = 1)
    private String filename;

    @NotNull
    private Short width;

    @NotNull
    private Short height;
}
