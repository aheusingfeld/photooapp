package de.goldstift.photoo.web;

import de.goldstift.photoo.domain.Folder;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/folders")
@Controller
@RooWebScaffold(path = "folders", formBackingObject = Folder.class)
public class FolderController {
}
