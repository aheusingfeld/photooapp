// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.goldstift.photoo.service;

import de.goldstift.photoo.domain.Tag;
import de.goldstift.photoo.repository.TagRepository;
import java.lang.Long;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TagServiceImpl_Roo_Service {
    
    declare @type: TagServiceImpl: @Service;
    
    declare @type: TagServiceImpl: @Transactional;
    
    @Autowired
    TagRepository TagServiceImpl.tagRepository;
    
    public long TagServiceImpl.countAllTags() {
        return tagRepository.count();
    }
    
    public void TagServiceImpl.deleteTag(Tag tag) {
        tagRepository.delete(tag);
    }
    
    public Tag TagServiceImpl.findTag(Long id) {
        return tagRepository.findOne(id);
    }
    
    public List<Tag> TagServiceImpl.findAllTags() {
        return tagRepository.findAll();
    }
    
    public List<Tag> TagServiceImpl.findTagEntries(int firstResult, int maxResults) {
        return tagRepository.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void TagServiceImpl.saveTag(Tag tag) {
        tagRepository.save(tag);
    }
    
    public Tag TagServiceImpl.updateTag(Tag tag) {
        return tagRepository.save(tag);
    }
    
}
