package de.goldstift.photoo.web;

import de.goldstift.photoo.domain.Photo;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/photos")
@Controller
@RooWebScaffold(path = "photos", formBackingObject = Photo.class)
@RooWebJson(jsonObject = Photo.class)
public class PhotoController {
}
