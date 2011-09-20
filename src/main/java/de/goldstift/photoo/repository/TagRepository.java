package de.goldstift.photoo.repository;

import de.goldstift.photoo.domain.Tag;
import org.springframework.roo.addon.layers.repository.jpa.RooRepositoryJpa;

@RooRepositoryJpa(domainType = Tag.class)
public interface TagRepository {
}
