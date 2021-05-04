package asciidoctorj.perf.app;

import org.asciidoctor.Asciidoctor;
import org.asciidoctor.AttributesBuilder;
import org.asciidoctor.OptionsBuilder;
import org.asciidoctor.SafeMode;

import java.io.File;

class Converter {

    public void convert(String backend, String sourcePath) {
        long start = System.currentTimeMillis();

        Asciidoctor asciidoctor = Asciidoctor.Factory.create();

        AttributesBuilder attributes = AttributesBuilder.attributes();
        attributes.tableOfContents(true);

        OptionsBuilder options = OptionsBuilder.options();
        options.backend(backend);
        options.safe(SafeMode.UNSAFE);
        options.mkDirs(true);
        options.attributes(attributes);
        options.toDir(new File("build"));

        asciidoctor.convertFile(new File(sourcePath), options);
        
        System.out.println(Float.valueOf(System.currentTimeMillis() - start)/1000);
    }
}
