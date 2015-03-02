public class Program {
    public static void main() {
        System.debug(
            LoggingLevel.FINEST, 
            String.format(
                'Hello, {0}!', 
                new String[] {System.UserInfo.getName()}));
    }
}