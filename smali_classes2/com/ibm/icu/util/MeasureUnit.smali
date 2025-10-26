.class public Lcom/ibm/icu/util/MeasureUnit;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;,
        Lcom/ibm/icu/util/MeasureUnit$CurrencyNumericCodeSink;,
        Lcom/ibm/icu/util/MeasureUnit$MeasureUnitSink;,
        Lcom/ibm/icu/util/MeasureUnit$Factory;,
        Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;,
        Lcom/ibm/icu/util/MeasureUnit$Complexity;
    }
.end annotation


# static fields
.field public static final ACRE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final ACRE_FOOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final AMPERE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final ARC_MINUTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final ARC_SECOND:Lcom/ibm/icu/util/MeasureUnit;

.field static final ASCII:Lcom/ibm/icu/text/UnicodeSet;

.field static final ASCII_HYPHEN_DIGITS:Lcom/ibm/icu/text/UnicodeSet;

.field public static final ASTRONOMICAL_UNIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final ATMOSPHERE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BAR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BARREL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BRITISH_THERMAL_UNIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BUSHEL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final BYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CALORIE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CANDELA:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CARAT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CELSIUS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CENTILITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CENTURY:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_FOOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_METER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_MILE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUBIC_YARD:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUP:Lcom/ibm/icu/util/MeasureUnit;

.field public static final CUP_METRIC:Lcom/ibm/icu/util/MeasureUnit;

.field static CURRENCY_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory; = null

.field public static final DALTON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DAY:Lcom/ibm/icu/util/TimeUnit;

.field public static final DAY_PERSON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DECADE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DECILITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DECIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DEGREE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DESSERT_SPOON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DESSERT_SPOON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DOT_PER_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DOT_PER_INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DRAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DROP:Lcom/ibm/icu/util/MeasureUnit;

.field public static final DUNAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final EARTH_MASS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final EARTH_RADIUS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final ELECTRONVOLT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final EM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FAHRENHEIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FATHOM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FLUID_OUNCE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FLUID_OUNCE_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FOODCALORIE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FOOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final FURLONG:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GALLON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GALLON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GENERIC_TEMPERATURE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GIGABIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GIGABYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GIGAHERTZ:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GIGAWATT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GRAIN:Lcom/ibm/icu/util/MeasureUnit;

.field public static final GRAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final G_FORCE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HECTARE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HECTOLITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HECTOPASCAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HERTZ:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HORSEPOWER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final HOUR:Lcom/ibm/icu/util/TimeUnit;

.field public static final INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final INCH_HG:Lcom/ibm/icu/util/MeasureUnit;

.field public static final JIGGER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final JOULE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KARAT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KELVIN:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOBIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOBYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOCALORIE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOGRAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOHERTZ:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOJOULE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOMETER_PER_HOUR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOPASCAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOWATT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KILOWATT_HOUR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final KNOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LIGHT_YEAR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LITER_PER_100KILOMETERS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LITER_PER_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LUMEN:Lcom/ibm/icu/util/MeasureUnit;

.field public static final LUX:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGABIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGABYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGAHERTZ:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGALITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGAPASCAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGAPIXEL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MEGAWATT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final METER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final METER_PER_SECOND:Lcom/ibm/icu/util/MeasureUnit;

.field public static final METER_PER_SECOND_SQUARED:Lcom/ibm/icu/util/MeasureUnit;

.field public static final METRIC_TON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MICROGRAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MICROMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MICROSECOND:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILE_PER_GALLON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILE_PER_GALLON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILE_PER_HOUR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILE_SCANDINAVIAN:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIAMPERE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIBAR:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIGRAM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIGRAM_OFGLUCOSE_PER_DECILITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIGRAM_PER_DECILITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLILITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIMETER_OF_MERCURY:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIMOLE_PER_LITER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLISECOND:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MILLIWATT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MINUTE:Lcom/ibm/icu/util/TimeUnit;

.field public static final MOLE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final MONTH:Lcom/ibm/icu/util/TimeUnit;

.field public static final MONTH_PERSON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final NANOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final NANOSECOND:Lcom/ibm/icu/util/MeasureUnit;

.field public static final NAUTICAL_MILE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final NEWTON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final NEWTON_METER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final OHM:Lcom/ibm/icu/util/MeasureUnit;

.field public static final OUNCE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final OUNCE_TROY:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PARSEC:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PART_PER_MILLION:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PASCAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PERCENT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PERMYRIAD:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PETABYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PICOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PINCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PINT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PINT_METRIC:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PIXEL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PIXEL_PER_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final PIXEL_PER_INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final POINT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final POUND:Lcom/ibm/icu/util/MeasureUnit;

.field public static final POUND_FOOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final POUND_FORCE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final POUND_PER_SQUARE_INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final QUART:Lcom/ibm/icu/util/MeasureUnit;

.field public static final QUART_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

.field public static final RADIAN:Lcom/ibm/icu/util/MeasureUnit;

.field public static final REVOLUTION_ANGLE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SECOND:Lcom/ibm/icu/util/TimeUnit;

.field public static final SOLAR_LUMINOSITY:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SOLAR_MASS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SOLAR_RADIUS:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_FOOT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_INCH:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_METER:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_MILE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final SQUARE_YARD:Lcom/ibm/icu/util/MeasureUnit;

.field public static final STONE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final TABLESPOON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final TEASPOON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final TERABIT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final TERABYTE:Lcom/ibm/icu/util/MeasureUnit;

.field public static final THERM_US:Lcom/ibm/icu/util/MeasureUnit;

.field static TIMEUNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory; = null

.field public static final TON:Lcom/ibm/icu/util/MeasureUnit;

.field private static UNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory; = null

.field public static final VOLT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final WATT:Lcom/ibm/icu/util/MeasureUnit;

.field public static final WEEK:Lcom/ibm/icu/util/TimeUnit;

.field public static final WEEK_PERSON:Lcom/ibm/icu/util/MeasureUnit;

.field public static final YARD:Lcom/ibm/icu/util/MeasureUnit;

.field public static final YEAR:Lcom/ibm/icu/util/TimeUnit;

.field public static final YEAR_PERSON:Lcom/ibm/icu/util/MeasureUnit;

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheIsPopulated:Z = false

.field private static final serialVersionUID:J = -0x1988e6791858c814L


# instance fields
.field private measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

.field protected final subType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final type:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->cache:Ljava/util/Map;

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/ibm/icu/util/MeasureUnit;->cacheIsPopulated:Z

    .line 745
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->ASCII:Lcom/ibm/icu/text/UnicodeSet;

    .line 746
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->ASCII_HYPHEN_DIGITS:Lcom/ibm/icu/text/UnicodeSet;

    .line 762
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$1;

    invoke-direct {v0}, Lcom/ibm/icu/util/MeasureUnit$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->UNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    .line 769
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$2;

    invoke-direct {v0}, Lcom/ibm/icu/util/MeasureUnit$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->CURRENCY_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    .line 776
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$3;

    invoke-direct {v0}, Lcom/ibm/icu/util/MeasureUnit$3;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->TIMEUNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    const-string v0, "acceleration"

    const-string v1, "g-force"

    .line 898
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->G_FORCE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "meter-per-square-second"

    .line 904
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->METER_PER_SECOND_SQUARED:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "angle"

    const-string v1, "arc-minute"

    .line 910
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ARC_MINUTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "arc-second"

    .line 916
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ARC_SECOND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "degree"

    .line 922
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DEGREE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "radian"

    .line 928
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->RADIAN:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "revolution"

    .line 934
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->REVOLUTION_ANGLE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "area"

    const-string v1, "acre"

    .line 940
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ACRE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dunam"

    .line 946
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DUNAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "hectare"

    .line 952
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HECTARE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-centimeter"

    .line 958
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-foot"

    .line 964
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_FOOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-inch"

    .line 970
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-kilometer"

    .line 976
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-meter"

    .line 982
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_METER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-mile"

    .line 988
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_MILE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "square-yard"

    .line 994
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->SQUARE_YARD:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "concentr"

    const-string v1, "karat"

    .line 1000
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KARAT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milligram-ofglucose-per-deciliter"

    .line 1006
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIGRAM_OFGLUCOSE_PER_DECILITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milligram-per-deciliter"

    .line 1012
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIGRAM_PER_DECILITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "millimole-per-liter"

    .line 1018
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIMOLE_PER_LITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mole"

    .line 1024
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MOLE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "percent"

    .line 1030
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "permille"

    .line 1036
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "permillion"

    .line 1042
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PART_PER_MILLION:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "permyriad"

    .line 1048
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->PERMYRIAD:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "consumption"

    const-string v1, "liter-per-100-kilometer"

    .line 1054
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LITER_PER_100KILOMETERS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "liter-per-kilometer"

    .line 1060
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LITER_PER_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mile-per-gallon"

    .line 1066
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILE_PER_GALLON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mile-per-gallon-imperial"

    .line 1072
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->MILE_PER_GALLON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "digital"

    const-string v1, "bit"

    .line 1078
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "byte"

    .line 1084
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "gigabit"

    .line 1090
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GIGABIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "gigabyte"

    .line 1096
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GIGABYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilobit"

    .line 1102
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOBIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilobyte"

    .line 1108
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOBYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megabit"

    .line 1114
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGABIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megabyte"

    .line 1120
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGABYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "petabyte"

    .line 1126
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PETABYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "terabit"

    .line 1132
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->TERABIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "terabyte"

    .line 1138
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->TERABYTE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "duration"

    const-string v1, "century"

    .line 1144
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CENTURY:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "day"

    .line 1150
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DAY:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "day-person"

    .line 1156
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DAY_PERSON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "decade"

    .line 1162
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DECADE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "hour"

    .line 1168
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "microsecond"

    .line 1174
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MICROSECOND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "millisecond"

    .line 1180
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLISECOND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "minute"

    .line 1186
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "month"

    .line 1192
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MONTH:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "month-person"

    .line 1198
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MONTH_PERSON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "nanosecond"

    .line 1204
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->NANOSECOND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "second"

    .line 1210
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "week"

    .line 1216
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->WEEK:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "week-person"

    .line 1222
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->WEEK_PERSON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "year"

    .line 1228
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/TimeUnit;

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->YEAR:Lcom/ibm/icu/util/TimeUnit;

    const-string v1, "year-person"

    .line 1234
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->YEAR_PERSON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "electric"

    const-string v1, "ampere"

    .line 1240
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->AMPERE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milliampere"

    .line 1246
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIAMPERE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "ohm"

    .line 1252
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->OHM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "volt"

    .line 1258
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->VOLT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "energy"

    const-string v1, "british-thermal-unit"

    .line 1264
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BRITISH_THERMAL_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "calorie"

    .line 1270
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CALORIE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "electronvolt"

    .line 1276
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ELECTRONVOLT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "foodcalorie"

    .line 1282
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FOODCALORIE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "joule"

    .line 1288
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->JOULE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilocalorie"

    .line 1294
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOCALORIE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilojoule"

    .line 1300
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOJOULE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilowatt-hour"

    .line 1306
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOWATT_HOUR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "therm-us"

    .line 1312
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->THERM_US:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "force"

    const-string v1, "newton"

    .line 1318
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->NEWTON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pound-force"

    .line 1324
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->POUND_FORCE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "frequency"

    const-string v1, "gigahertz"

    .line 1330
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GIGAHERTZ:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "hertz"

    .line 1336
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HERTZ:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilohertz"

    .line 1342
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOHERTZ:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megahertz"

    .line 1348
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->MEGAHERTZ:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "graphics"

    const-string v1, "dot"

    .line 1354
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dot-per-centimeter"

    .line 1360
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DOT_PER_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dot-per-inch"

    .line 1366
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DOT_PER_INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "em"

    .line 1372
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->EM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megapixel"

    .line 1378
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGAPIXEL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pixel"

    .line 1384
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PIXEL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pixel-per-centimeter"

    .line 1390
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PIXEL_PER_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pixel-per-inch"

    .line 1396
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->PIXEL_PER_INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "length"

    const-string v1, "astronomical-unit"

    .line 1402
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ASTRONOMICAL_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "centimeter"

    .line 1408
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "decimeter"

    .line 1414
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DECIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "earth-radius"

    .line 1420
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->EARTH_RADIUS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "fathom"

    .line 1426
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FATHOM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "foot"

    .line 1432
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FOOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "furlong"

    .line 1438
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FURLONG:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "inch"

    .line 1444
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilometer"

    .line 1450
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "light-year"

    .line 1456
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LIGHT_YEAR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "meter"

    .line 1462
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->METER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "micrometer"

    .line 1468
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MICROMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mile"

    .line 1474
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mile-scandinavian"

    .line 1480
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILE_SCANDINAVIAN:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "millimeter"

    .line 1486
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "nanometer"

    .line 1492
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->NANOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "nautical-mile"

    .line 1498
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->NAUTICAL_MILE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "parsec"

    .line 1504
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PARSEC:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "picometer"

    .line 1510
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PICOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "point"

    .line 1516
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->POINT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "solar-radius"

    .line 1522
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SOLAR_RADIUS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "yard"

    .line 1528
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->YARD:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "light"

    const-string v1, "candela"

    .line 1534
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CANDELA:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "lumen"

    .line 1540
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LUMEN:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "lux"

    .line 1546
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LUX:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "solar-luminosity"

    .line 1552
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->SOLAR_LUMINOSITY:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "mass"

    const-string v1, "carat"

    .line 1558
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CARAT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dalton"

    .line 1564
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DALTON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "earth-mass"

    .line 1570
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->EARTH_MASS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "grain"

    .line 1576
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GRAIN:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "gram"

    .line 1582
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GRAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilogram"

    .line 1588
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOGRAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "metric-ton"

    .line 1594
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->METRIC_TON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "microgram"

    .line 1600
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MICROGRAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milligram"

    .line 1606
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIGRAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "ounce"

    .line 1612
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->OUNCE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "ounce-troy"

    .line 1618
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->OUNCE_TROY:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pound"

    .line 1624
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->POUND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "solar-mass"

    .line 1630
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->SOLAR_MASS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "stone"

    .line 1636
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->STONE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "ton"

    .line 1642
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->TON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "power"

    const-string v1, "gigawatt"

    .line 1648
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GIGAWATT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "horsepower"

    .line 1654
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HORSEPOWER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilowatt"

    .line 1660
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOWATT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megawatt"

    .line 1666
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGAWATT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milliwatt"

    .line 1672
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIWATT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "watt"

    .line 1678
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->WATT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "pressure"

    const-string v1, "atmosphere"

    .line 1684
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ATMOSPHERE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "bar"

    .line 1690
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BAR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "hectopascal"

    .line 1696
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HECTOPASCAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "inch-ofhg"

    .line 1702
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->INCH_HG:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kilopascal"

    .line 1708
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOPASCAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megapascal"

    .line 1714
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGAPASCAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "millibar"

    .line 1720
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIBAR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "millimeter-ofhg"

    .line 1726
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLIMETER_OF_MERCURY:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pascal"

    .line 1732
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PASCAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pound-force-per-square-inch"

    .line 1738
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->POUND_PER_SQUARE_INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "speed"

    const-string v1, "kilometer-per-hour"

    .line 1744
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KILOMETER_PER_HOUR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "knot"

    .line 1750
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->KNOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "meter-per-second"

    .line 1756
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->METER_PER_SECOND:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "mile-per-hour"

    .line 1762
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->MILE_PER_HOUR:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "temperature"

    const-string v1, "celsius"

    .line 1768
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CELSIUS:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "fahrenheit"

    .line 1774
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FAHRENHEIT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "generic"

    .line 1780
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GENERIC_TEMPERATURE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "kelvin"

    .line 1786
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->KELVIN:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "torque"

    const-string v1, "newton-meter"

    .line 1792
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->NEWTON_METER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pound-force-foot"

    .line 1798
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->POUND_FOOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v0, "volume"

    const-string v1, "acre-foot"

    .line 1804
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->ACRE_FOOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "barrel"

    .line 1810
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BARREL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "bushel"

    .line 1816
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->BUSHEL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "centiliter"

    .line 1822
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CENTILITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-centimeter"

    .line 1828
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_CENTIMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-foot"

    .line 1834
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_FOOT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-inch"

    .line 1840
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_INCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-kilometer"

    .line 1846
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_KILOMETER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-meter"

    .line 1852
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_METER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-mile"

    .line 1858
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_MILE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cubic-yard"

    .line 1864
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUBIC_YARD:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cup"

    .line 1870
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUP:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "cup-metric"

    .line 1876
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->CUP_METRIC:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "deciliter"

    .line 1882
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DECILITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dessert-spoon"

    .line 1888
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DESSERT_SPOON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dessert-spoon-imperial"

    .line 1894
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DESSERT_SPOON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "dram"

    .line 1900
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DRAM:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "drop"

    .line 1906
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->DROP:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "fluid-ounce"

    .line 1912
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FLUID_OUNCE:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "fluid-ounce-imperial"

    .line 1918
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->FLUID_OUNCE_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "gallon"

    .line 1924
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GALLON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "gallon-imperial"

    .line 1930
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->GALLON_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "hectoliter"

    .line 1936
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->HECTOLITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "jigger"

    .line 1942
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->JIGGER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "liter"

    .line 1948
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->LITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "megaliter"

    .line 1954
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MEGALITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "milliliter"

    .line 1960
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->MILLILITER:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pinch"

    .line 1966
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PINCH:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pint"

    .line 1972
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PINT:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "pint-metric"

    .line 1978
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->PINT_METRIC:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "quart"

    .line 1984
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->QUART:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "quart-imperial"

    .line 1990
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->QUART_IMPERIAL:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "tablespoon"

    .line 1996
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/MeasureUnit;->TABLESPOON:Lcom/ibm/icu/util/MeasureUnit;

    const-string v1, "teaspoon"

    .line 2002
    invoke-static {v0, v1}, Lcom/ibm/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/MeasureUnit;->TEASPOON:Lcom/ibm/icu/util/MeasureUnit;

    return-void

    :array_0
    .array-data 4
        0x2d
        0x2d
        0x30
        0x39
        0x61
        0x7a
    .end array-data
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)V
    .locals 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    .line 419
    iput-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->copy()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    .line 375
    iput-object p2, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    return-void
.end method

.method protected static declared-synchronized addUnit(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/MeasureUnit$Factory;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ibm/icu/util/MeasureUnit;

    monitor-enter v0

    .line 867
    :try_start_0
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->cache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    .line 869
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 872
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/MeasureUnit;

    iget-object p0, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    .line 874
    :goto_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/MeasureUnit;

    if-nez v1, :cond_1

    .line 876
    invoke-interface {p2, p0, p1}, Lcom/ibm/icu/util/MeasureUnit$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static findBySubType(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    invoke-static {}, Lcom/ibm/icu/util/MeasureUnit;->populateCache()V

    .line 737
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 738
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/MeasureUnit;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    if-eqz p0, :cond_1

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    return-object p0

    .line 395
    :cond_1
    :goto_0
    sget-object p0, Lcom/ibm/icu/util/NoUnit;->BASE:Lcom/ibm/icu/util/MeasureUnit;

    return-object p0
.end method

.method public static fromMeasureUnitImpl(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 408
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/ibm/icu/util/MeasureUnit;->findBySubType(Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/MeasureUnit;-><init>(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)V

    return-object v0
.end method

.method public static declared-synchronized getAvailable()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/ibm/icu/util/MeasureUnit;

    monitor-enter v0

    .line 688
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 689
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lcom/ibm/icu/util/MeasureUnit;->getAvailableTypes()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 690
    invoke-static {v3}, Lcom/ibm/icu/util/MeasureUnit;->getAvailable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/MeasureUnit;

    .line 691
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 696
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static getAvailable(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation

    .line 673
    invoke-static {}, Lcom/ibm/icu/util/MeasureUnit;->populateCache()V

    .line 674
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->cache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 678
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/CollectionSet;

    .line 679
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CollectionSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAvailableTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 662
    invoke-static {}, Lcom/ibm/icu/util/MeasureUnit;->populateCache()V

    .line 663
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getMaybeReferenceOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 1

    .line 2044
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    .line 2045
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    return-object v0

    .line 2023
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    return-object v0
.end method

.method public static internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "currency"

    .line 714
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->ASCII:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit;->ASCII_HYPHEN_DIGITS:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The type or subType are invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 720
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->CURRENCY_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    goto :goto_1

    :cond_2
    const-string v0, "duration"

    .line 722
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->TIMEUNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    goto :goto_1

    .line 725
    :cond_3
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit;->UNIT_FACTORY:Lcom/ibm/icu/util/MeasureUnit$Factory;

    .line 727
    :goto_1
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/util/MeasureUnit;->addUnit(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/MeasureUnit$Factory;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    return-object p0

    .line 712
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Type and subType must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized populateCache()V
    .locals 5

    const-class v0, Lcom/ibm/icu/util/MeasureUnit;

    monitor-enter v0

    .line 832
    :try_start_0
    sget-boolean v1, Lcom/ibm/icu/util/MeasureUnit;->cacheIsPopulated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 833
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 835
    :try_start_1
    sput-boolean v1, Lcom/ibm/icu/util/MeasureUnit;->cacheIsPopulated:Z

    const-string v1, "com/ibm/icu/impl/data/icudt69b/unit"

    const-string v2, "en"

    .line 848
    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "units"

    .line 851
    new-instance v3, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitSink;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitSink;-><init>(Lcom/ibm/icu/util/MeasureUnit$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    const-string v1, "com/ibm/icu/impl/data/icudt69b"

    const-string v2, "currencyNumericCodes"

    .line 854
    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/ICUResourceBundle;

    const-string v2, "codeMap"

    .line 858
    new-instance v3, Lcom/ibm/icu/util/MeasureUnit$CurrencyNumericCodeSink;

    invoke-direct {v3, v4}, Lcom/ibm/icu/util/MeasureUnit$CurrencyNumericCodeSink;-><init>(Lcom/ibm/icu/util/MeasureUnit$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2009
    new-instance v0, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 638
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/MeasureUnit;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 642
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    return-object v0
.end method

.method public getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2034
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    .line 2035
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    goto :goto_0

    .line 2036
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->copy()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDimensionality()I
    .locals 1

    .line 517
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public product(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 3

    .line 574
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    if-nez p1, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    return-object p1

    .line 580
    :cond_0
    invoke-direct {p1}, Lcom/ibm/icu/util/MeasureUnit;->getMaybeReferenceOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p1

    .line 581
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-eq v1, v2, :cond_2

    .line 586
    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 587
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z

    goto :goto_0

    .line 590
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    return-object p1

    .line 582
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public reciprocal()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/ibm/icu/util/MeasureUnit;->getCopyOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->takeReciprocal()V

    .line 553
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method

.method public splitToSingleUnits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation

    .line 609
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;->getMaybeReferenceOfMeasureUnitImpl()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 612
    invoke-virtual {v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/ibm/icu/util/MeasureUnit;->measureUnitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/MeasureUnit;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public withDimensionality(I)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 535
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    return-object p1
.end method

.method public withPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;->getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)V

    .line 487
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p1

    return-object p1
.end method
