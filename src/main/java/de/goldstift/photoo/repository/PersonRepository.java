package de.goldstift.photoo.repository;

import de.goldstift.photoo.domain.Person;
import org.springframework.roo.addon.layers.repository.jpa.RooRepositoryJpa;

@RooRepositoryJpa(domainType = Person.class)
public interface PersonRepository {
}
