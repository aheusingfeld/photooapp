package de.goldstift.photoo.util.images;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

import java.awt.Dimension;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.junit.Test;

public class ImageScalingTransformerTest
{

    @Test
    public void testCalculateProportion()
    {
        ImageScalingTransformer transformer = new ImageScalingTransformer();
        assertThat(transformer.calculateProportion(1024, 768, 248), is(186));
        assertThat(transformer.calculateProportion(2592, 1936, 1024), is(765));
    }

    @Test
    public void testScaleImageFile() throws FileNotFoundException, IOException
    {
        ImageScalingTransformer transformer = new ImageScalingTransformer();
        File sourceFile = new File(this.getClass().getResource("/IMG_2625.JPG").getFile());
        assertThat("sourceFile is not readable", sourceFile.canRead(), is(true));

        File scaledFile = transformer.scaleImageFile(sourceFile, new Dimension(1024, 765), sourceFile.getParent() +"/IMG_2625_result.JPG");
        assertThat("scaledFile is not readable", scaledFile.canRead(), is(true));

        // TODO check dimension of resulting image
        // TODO check EXIF information of resulting image
    }

}
