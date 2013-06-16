import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;

public class Main implements FileVisitor<Path> {

    private String searchPhrase;
    private Path found;

    public Main(String searchPhrase) {
        StringBuilder bob = new StringBuilder(".*");
        for (char c : searchPhrase.toLowerCase().toCharArray()) {
            bob.append(c).append(".*");
        }
        this.searchPhrase = bob.toString();
    }

    @Override
    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
        if (dir.getFileName().toString().startsWith(".")) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        if (dir.getFileName().toString().toLowerCase().startsWith("trash")) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
        String name = file.getFileName().toString().toLowerCase();
        if (name.endsWith(".srt")) {
            return FileVisitResult.CONTINUE;
        }
        if (name.matches(searchPhrase)) {
            found = file;
            return FileVisitResult.TERMINATE;
        }
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult visitFileFailed(Path file, IOException exc) throws IOException {
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult postVisitDirectory(Path dir, IOException exc) throws IOException {
        return FileVisitResult.CONTINUE;
    }


    public static void main(String[] args) throws IOException {
        StringBuilder bob = new StringBuilder();
        for (String arg : args) {
            bob.append(arg).append("");
        }

        Main ranger = new Main(bob.toString().trim());
        Files.walkFileTree(Paths.get("/mnt/media/media"), ranger);

        if (ranger.found != null) {
            System.out.println(ranger.found);
        }

    }
}
