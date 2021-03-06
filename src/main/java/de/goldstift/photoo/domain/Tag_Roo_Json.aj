// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package de.goldstift.photoo.domain;

import de.goldstift.photoo.domain.Tag;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Tag_Roo_Json {
    
    public String Tag.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Tag Tag.fromJsonToTag(String json) {
        return new JSONDeserializer<Tag>().use(null, Tag.class).deserialize(json);
    }
    
    public static String Tag.toJsonArray(Collection<Tag> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Tag> Tag.fromJsonArrayToTags(String json) {
        return new JSONDeserializer<List<Tag>>().use(null, ArrayList.class).use("values", Tag.class).deserialize(json);
    }
    
}
