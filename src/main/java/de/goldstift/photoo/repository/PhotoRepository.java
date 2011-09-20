package de.goldstift.photoo.repository;

import de.goldstift.photoo.domain.Photo;
import org.springframework.roo.addon.layers.repository.jpa.RooRepositoryJpa;

@RooRepositoryJpa(domainType = Photo.class)
public interface PhotoRepository {
}
