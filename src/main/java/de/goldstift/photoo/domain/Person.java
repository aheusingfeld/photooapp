package de.goldstift.photoo.domain;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.entity.RooJpaEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaEntity
@RooJson
public class Person {

    @NotNull
    @Size(min = 2)
    private String lastname;

    private String firstname;

    @NotNull
    @Column(unique = true)
    private String nickname;
}
