package asciidoctorj.perf.app;

public class App {
    
    public static void main(String[] args) {
        Converter converter = new Converter();
        if (args.length != 2) {
            System.out.println("Usage:\n\t$ converter [BACKEND] [SOURCE_FILE]");
            System.exit(1);
        }
        converter.convert(args[1], args[0]);
    }
    
}
