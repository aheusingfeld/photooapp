package de.goldstift.photoo.web;

import de.goldstift.photoo.domain.PhotoFile;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/photofiles")
@Controller
@RooWebScaffold(path = "photofiles", formBackingObject = PhotoFile.class)
public class PhotoFileController {
}
