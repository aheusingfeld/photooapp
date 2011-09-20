// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.goldstift.photoo.domain;

import de.goldstift.photoo.domain.Event;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Event_Roo_Json {
    
    public String Event.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Event Event.fromJsonToEvent(String json) {
        return new JSONDeserializer<Event>().use(null, Event.class).deserialize(json);
    }
    
    public static String Event.toJsonArray(Collection<Event> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Event> Event.fromJsonArrayToEvents(String json) {
        return new JSONDeserializer<List<Event>>().use(null, ArrayList.class).use("values", Event.class).deserialize(json);
    }
    
}