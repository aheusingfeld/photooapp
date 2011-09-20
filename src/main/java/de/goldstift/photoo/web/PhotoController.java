package de.goldstift.photoo.web;

import de.goldstift.photoo.domain.Photo;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/photos")
@Controller
@RooWebScaffold(path = "photos", formBackingObject = Photo.class)
public class PhotoController {
}
