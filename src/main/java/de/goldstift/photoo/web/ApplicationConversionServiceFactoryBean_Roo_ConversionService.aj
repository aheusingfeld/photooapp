// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.goldstift.photoo.web;

import de.goldstift.photoo.domain.Event;
import de.goldstift.photoo.domain.Folder;
import de.goldstift.photoo.domain.Person;
import de.goldstift.photoo.domain.Photo;
import de.goldstift.photoo.domain.PhotoFile;
import de.goldstift.photoo.domain.Tag;
import de.goldstift.photoo.service.EventService;
import de.goldstift.photoo.service.PersonService;
import de.goldstift.photoo.service.PhotoService;
import de.goldstift.photoo.service.TagService;
import java.lang.Long;
import java.lang.String;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    EventService ApplicationConversionServiceFactoryBean.eventService;
    
    @Autowired
    PersonService ApplicationConversionServiceFactoryBean.personService;
    
    @Autowired
    PhotoService ApplicationConversionServiceFactoryBean.photoService;
    
    @Autowired
    TagService ApplicationConversionServiceFactoryBean.tagService;
    
    public Converter<Event, String> ApplicationConversionServiceFactoryBean.getEventToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.Event, java.lang.String>() {
            public String convert(Event event) {
                return new StringBuilder().append(event.getName()).append(" ").append(event.getFromDate()).append(" ").append(event.getToDate()).toString();
            }
        };
    }
    
    public Converter<Long, Event> ApplicationConversionServiceFactoryBean.getIdToEventConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, de.goldstift.photoo.domain.Event>() {
            public de.goldstift.photoo.domain.Event convert(java.lang.Long id) {
                return eventService.findEvent(id);
            }
        };
    }
    
    public Converter<String, Event> ApplicationConversionServiceFactoryBean.getStringToEventConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.Event>() {
            public de.goldstift.photoo.domain.Event convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Event.class);
            }
        };
    }
    
    public Converter<Folder, String> ApplicationConversionServiceFactoryBean.getFolderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.Folder, java.lang.String>() {
            public String convert(Folder folder) {
                return new StringBuilder().append(folder.getTitle()).append(" ").append(folder.getImportDate()).append(" ").append(folder.getSystemPath()).append(" ").append(folder.getUrlPath()).toString();
            }
        };
    }
    
    public Converter<String, Folder> ApplicationConversionServiceFactoryBean.getStringToFolderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.Folder>() {
            public de.goldstift.photoo.domain.Folder convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Folder.class);
            }
        };
    }
    
    public Converter<Person, String> ApplicationConversionServiceFactoryBean.getPersonToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.Person, java.lang.String>() {
            public String convert(Person person) {
                return new StringBuilder().append(person.getLastname()).append(" ").append(person.getFirstname()).append(" ").append(person.getNickname()).toString();
            }
        };
    }
    
    public Converter<Long, Person> ApplicationConversionServiceFactoryBean.getIdToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, de.goldstift.photoo.domain.Person>() {
            public de.goldstift.photoo.domain.Person convert(java.lang.Long id) {
                return personService.findPerson(id);
            }
        };
    }
    
    public Converter<String, Person> ApplicationConversionServiceFactoryBean.getStringToPersonConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.Person>() {
            public de.goldstift.photoo.domain.Person convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Person.class);
            }
        };
    }
    
    public Converter<Photo, String> ApplicationConversionServiceFactoryBean.getPhotoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.Photo, java.lang.String>() {
            public String convert(Photo photo) {
                return new StringBuilder().append(photo.getTitle()).append(" ").append(photo.getDescription()).append(" ").append(photo.getImportDate()).append(" ").append(photo.getShotDate()).toString();
            }
        };
    }
    
    public Converter<Long, Photo> ApplicationConversionServiceFactoryBean.getIdToPhotoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, de.goldstift.photoo.domain.Photo>() {
            public de.goldstift.photoo.domain.Photo convert(java.lang.Long id) {
                return photoService.findPhoto(id);
            }
        };
    }
    
    public Converter<String, Photo> ApplicationConversionServiceFactoryBean.getStringToPhotoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.Photo>() {
            public de.goldstift.photoo.domain.Photo convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Photo.class);
            }
        };
    }
    
    public Converter<PhotoFile, String> ApplicationConversionServiceFactoryBean.getPhotoFileToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.PhotoFile, java.lang.String>() {
            public String convert(PhotoFile photoFile) {
                return new StringBuilder().append(photoFile.getFilename()).append(" ").append(photoFile.getWidth()).append(" ").append(photoFile.getHeight()).toString();
            }
        };
    }
    
    public Converter<String, PhotoFile> ApplicationConversionServiceFactoryBean.getStringToPhotoFileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.PhotoFile>() {
            public de.goldstift.photoo.domain.PhotoFile convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PhotoFile.class);
            }
        };
    }
    
    public Converter<Tag, String> ApplicationConversionServiceFactoryBean.getTagToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<de.goldstift.photoo.domain.Tag, java.lang.String>() {
            public String convert(Tag tag) {
                return new StringBuilder().append(tag.getName()).append(" ").append(tag.getLowerCaseName()).toString();
            }
        };
    }
    
    public Converter<Long, Tag> ApplicationConversionServiceFactoryBean.getIdToTagConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, de.goldstift.photoo.domain.Tag>() {
            public de.goldstift.photoo.domain.Tag convert(java.lang.Long id) {
                return tagService.findTag(id);
            }
        };
    }
    
    public Converter<String, Tag> ApplicationConversionServiceFactoryBean.getStringToTagConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, de.goldstift.photoo.domain.Tag>() {
            public de.goldstift.photoo.domain.Tag convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Tag.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getEventToStringConverter());
        registry.addConverter(getIdToEventConverter());
        registry.addConverter(getStringToEventConverter());
        registry.addConverter(getFolderToStringConverter());
        registry.addConverter(getStringToFolderConverter());
        registry.addConverter(getPersonToStringConverter());
        registry.addConverter(getIdToPersonConverter());
        registry.addConverter(getStringToPersonConverter());
        registry.addConverter(getPhotoToStringConverter());
        registry.addConverter(getIdToPhotoConverter());
        registry.addConverter(getStringToPhotoConverter());
        registry.addConverter(getPhotoFileToStringConverter());
        registry.addConverter(getStringToPhotoFileConverter());
        registry.addConverter(getTagToStringConverter());
        registry.addConverter(getIdToTagConverter());
        registry.addConverter(getStringToTagConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
