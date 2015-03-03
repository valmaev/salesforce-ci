@isTest
public class BookTestClass {

    private static final Id m_dummyId = '120000000000000001';
    private static final String m_dummyTitle = 'foo';
    private static final String m_dummyDescription = 'bar';
    
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
        Book sut = new BookBuilder().withUniqueId(m_dummyId).build();
        System.assertEquals(m_dummyId, sut.UniqueId);
    }

    public static testmethod void Title_Always_ShouldProperlyInitialized() {
        Book sut = new BookBuilder().withTitle(m_dummyTitle).build();
        System.assertEquals(m_dummyTitle, sut.Title);
    }

    public static testmethod void Description_Always_ShouldProperlyInitialized() {
        Book sut = new BookBuilder().withDescription(m_dummyDescription).build();
        System.assertEquals(m_dummyDescription, sut.Description);
    }

    public static testmethod void ToString_Always_ShouldReturnExpectedResult() {
        Book sut = new BookBuilder()
            .withUniqueId(m_dummyId)
            .withTitle(m_dummyTitle)
            .withDescription(m_dummyDescription)
            .build();

        String actual = sut.toString();

        System.assert(actual.contains(m_dummyId));
        System.assert(actual.contains(m_dummyTitle));
        System.assert(actual.contains(m_dummyDescription));
    }
}