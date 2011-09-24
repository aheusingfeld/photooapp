// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.goldstift.photoo.domain;

import de.goldstift.photoo.domain.Event;
import de.goldstift.photoo.domain.Person;
import de.goldstift.photoo.domain.PhotoFile;
import de.goldstift.photoo.domain.Tag;
import java.lang.String;
import java.util.Date;
import java.util.Set;

privileged aspect Photo_Roo_JavaBean {
    
    public String Photo.getTitle() {
        return this.title;
    }
    
    public void Photo.setTitle(String title) {
        this.title = title;
    }
    
    public String Photo.getDescription() {
        return this.description;
    }
    
    public void Photo.setDescription(String description) {
        this.description = description;
    }
    
    public PhotoFile Photo.getThumbnailFile() {
        return this.thumbnailFile;
    }
    
    public void Photo.setThumbnailFile(PhotoFile thumbnailFile) {
        this.thumbnailFile = thumbnailFile;
    }
    
    public PhotoFile Photo.getPreviewFile() {
        return this.previewFile;
    }
    
    public void Photo.setPreviewFile(PhotoFile previewFile) {
        this.previewFile = previewFile;
    }
    
    public PhotoFile Photo.getOriginalFile() {
        return this.originalFile;
    }
    
    public void Photo.setOriginalFile(PhotoFile originalFile) {
        this.originalFile = originalFile;
    }
    
    public Date Photo.getImportDate() {
        return this.importDate;
    }
    
    public void Photo.setImportDate(Date importDate) {
        this.importDate = importDate;
    }
    
    public Date Photo.getShotDate() {
        return this.shotDate;
    }
    
    public void Photo.setShotDate(Date shotDate) {
        this.shotDate = shotDate;
    }
    
    public Set<Tag> Photo.getTags() {
        return this.tags;
    }
    
    public void Photo.setTags(Set<Tag> tags) {
        this.tags = tags;
    }
    
    public Set<Person> Photo.getPersons() {
        return this.persons;
    }
    
    public void Photo.setPersons(Set<Person> persons) {
        this.persons = persons;
    }
    
    public Set<Event> Photo.getEvents() {
        return this.events;
    }
    
    public void Photo.setEvents(Set<Event> events) {
        this.events = events;
    }
    
}
