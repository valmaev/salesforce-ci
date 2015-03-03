@isTest
public class BookTestClass {
    
    public static testmethod void Constructor_WithNullId_ShouldThrow() {
        try {
            new BookBuilder().withUniqueId(null).build();
        } catch (Exception ex) {
            System.assert(ex.getMessage().contains('uniqueId'));
            System.assert(ex.getMessage().contains('can\'t be null'));
            return;
        }

        System.assert(true == false);
    }

    public static testmethod void Constructor_WithNullTitle_ShouldThrow() {
        try {
            new BookBuilder().withTitle(null).build();
        } catch (Exception ex) {
            System.assert(ex.getMessage().contains('title'));
            System.assert(ex.getMessage().contains('can\'t be null'));
            return;
        }

        System.assert(true == false);
    }

    public static testmethod void Constructor_WithNullDescription_ShouldThrow() {
        try {
            new BookBuilder().withDescription(null).build();
        } catch (Exception ex) {
            System.assert(ex.getMessage().contains('description'));
            System.assert(ex.getMessage().contains('can\'t be null'));
            return;
        }

        System.assert(true == false);
    }

    public static testmethod void UniqueId_Always_ShouldProperlyInitialized() {
        final Id expected = '120000000000000001';
        Book sut = new BookBuilder().withUniqueId(expected).build();
        System.assertEquals(expected, sut.UniqueId);
    }

    public static testmethod void Title_Always_ShouldProperlyInitialized() {
        final String expected = 'foo';
        Book sut = new BookBuilder().withTitle(expected).build();
        System.assertEquals(expected, sut.Title);
    }

    public static testmethod void Description_Always_ShouldProperlyInitialized() {
        final String expected = 'bar';
        Book sut = new BookBuilder().withDescription(expected).build();
        System.assertEquals(expected, sut.Description);
    }

    public static testmethod void ToString_Always_ShouldReturnExpectedResult() {
        final Id expectedId = '120000000000000001';
        final String expectedTitle = 'foo';
        final String expectedDescription = 'bar';
        Book sut = new BookBuilder()
            .withUniqueId(expectedId)
            .withTitle(expectedTitle)
            .withDescription(expectedDescription)
            .build();

        String actual = sut.toString();

        System.assert(actual.contains(expectedId));
        System.assert(actual.contains(expectedTitle));
        System.assert(actual.contains(expectedDescription));
    }
}