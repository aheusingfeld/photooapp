package de.goldstift.photoo.repository;

import de.goldstift.photoo.domain.Event;
import org.springframework.roo.addon.layers.repository.jpa.RooRepositoryJpa;

@RooRepositoryJpa(domainType = Event.class)
public interface EventRepository {
}
