.class Lcom/ibm/icu/number/NumberSkeletonImpl;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;,
        Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;,
        Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;,
        Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;,
        Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;,
        Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ALT_WILDCARD_CHAR:C = '+'

.field static final SERIALIZED_STEM_TRIE:Ljava/lang/String;

.field static final STEM_ENUM_VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

.field static final WILDCARD_CHAR:C = '*'

.field private static final cache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/number/UnlocalizedNumberFormatter;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    invoke-static {}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->values()[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    .line 151
    invoke-static {}, Lcom/ibm/icu/number/NumberSkeletonImpl;->buildStemTrie()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    .line 522
    new-instance v0, Lcom/ibm/icu/number/NumberSkeletonImpl$1;

    invoke-direct {v0}, Lcom/ibm/icu/number/NumberSkeletonImpl$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl;->cache:Lcom/ibm/icu/impl/CacheBase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3700(Ljava/lang/StringBuilder;II)V
    .locals 0

    .line 36
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl;->appendMultiple(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static appendMultiple(Ljava/lang/StringBuilder;II)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1695
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static buildStemTrie()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Lcom/ibm/icu/util/CharsTrieBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/util/CharsTrieBuilder;-><init>()V

    .line 157
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_SHORT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "compact-short"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 158
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_LONG:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "compact-long"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 159
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "scientific"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 160
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ENGINEERING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "engineering"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 161
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NOTATION_SIMPLE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "notation-simple"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 162
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_BASE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "base-unit"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 163
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 164
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERMILLE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "permille"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 165
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INTEGER:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-integer"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 166
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_UNLIMITED:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-unlimited"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 167
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_STANDARD:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-currency-standard"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 168
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_CASH:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-currency-cash"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 169
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_CEILING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-ceiling"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 170
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_FLOOR:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-floor"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 171
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_DOWN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-down"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 172
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UP:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-up"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 173
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_EVEN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-even"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 174
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_DOWN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-down"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 175
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_UP:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-half-up"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 176
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UNNECESSARY:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "rounding-mode-unnecessary"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 177
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_OFF:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-off"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 178
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_MIN2:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-min2"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 179
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-auto"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 180
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_ON_ALIGNED:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-on-aligned"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 181
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_THOUSANDS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "group-thousands"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 182
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_LATIN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "latin"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 183
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_NARROW:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-narrow"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 184
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_SHORT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-short"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 185
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FULL_NAME:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-full-name"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 186
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_ISO_CODE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-iso-code"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 187
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FORMAL:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-formal"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 188
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_VARIANT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-variant"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 189
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_HIDDEN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit-width-hidden"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 190
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-auto"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 191
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-always"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 192
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEVER:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-never"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 193
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 194
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-always"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 195
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-except-zero"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 196
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-except-zero"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 197
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-negative"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 198
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "sign-accounting-negative"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 199
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "decimal-auto"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 200
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "decimal-always"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 203
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INCREMENT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "precision-increment"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 204
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "measure-unit"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 205
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "per-measure-unit"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 206
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "unit"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 207
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "usage"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 208
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_CURRENCY:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "currency"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 209
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "integer-width"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 210
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "numbering-system"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 211
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 214
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_SHORT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "K"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 215
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_LONG:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "KK"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 216
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "%"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 217
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT_100:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "%x100"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 218
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_OFF:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",_"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 219
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_MIN2:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",?"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 220
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_ON_ALIGNED:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, ",!"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 221
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+!"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 222
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEVER:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+_"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 223
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 224
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()!"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 225
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+?"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 226
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()?"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 227
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "+-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 228
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const-string v2, "()-"

    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CharsTrieBuilder;

    .line 232
    sget-object v1, Lcom/ibm/icu/util/StringTrieBuilder$Option;->FAST:Lcom/ibm/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CharsTrieBuilder;->buildCharSequence(Lcom/ibm/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1689
    :cond_0
    new-instance p0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Duplicated setting"

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p0
.end method

.method public static create(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    .line 551
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->parseSkeleton(Ljava/lang/String;)Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object p0

    .line 552
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter;->with()Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->macros(Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method public static generate(Lcom/ibm/icu/impl/number/MacroProps;)Ljava/lang/String;
    .locals 1

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    invoke-static {p0, v0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->generateSkeleton(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)V

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateSkeleton(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$2500(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$2600(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$2700(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$2800(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$2900(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3000(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 958
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3100(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 961
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3200(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 964
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 966
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    if-eqz v0, :cond_8

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3300(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 967
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 969
    :cond_8
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3400(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 970
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 972
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3500(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 973
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 975
    :cond_a
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    if-eqz v0, :cond_b

    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$GeneratorHelpers;->access$3600(Lcom/ibm/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 976
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    :cond_b
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    if-nez v0, :cond_11

    .line 984
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    .line 985
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom unit display case"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 988
    :cond_d
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/MacroProps;->affixProvider:Lcom/ibm/icu/impl/number/AffixPatternProvider;

    if-nez v0, :cond_10

    .line 992
    iget-object p0, p0, Lcom/ibm/icu/impl/number/MacroProps;->rules:Lcom/ibm/icu/text/PluralRules;

    if-nez p0, :cond_f

    .line 998
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_e

    .line 999
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_e
    return-void

    .line 993
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom plural rules"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 989
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom affix provider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 981
    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot generate number skeleton with custom padder"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOrCreate(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;
    .locals 2

    .line 540
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl;->cache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method static isWildcardChar(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static parseOption(Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
    .locals 2

    .line 858
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 893
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 884
    :pswitch_0
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$2000(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 885
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 881
    :pswitch_1
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1900(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 882
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 878
    :pswitch_2
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1800(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 879
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 860
    :pswitch_3
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 861
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 872
    :pswitch_4
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1600(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 873
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 869
    :pswitch_5
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1500(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 870
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 866
    :pswitch_6
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1400(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 867
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 863
    :pswitch_7
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 864
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 875
    :pswitch_8
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$1700(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 876
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 895
    :cond_0
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$2100(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 898
    :cond_1
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$2200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 907
    :cond_2
    :goto_0
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 909
    :cond_3
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$2300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 910
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 913
    :cond_4
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    .line 920
    :goto_1
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_5

    .line 922
    invoke-static {p1, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$2400(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 923
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 931
    :cond_5
    new-instance p0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string p2, "Invalid option"

    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseSkeleton(Ljava/lang/String;)Lcom/ibm/icu/impl/number/MacroProps;
    .locals 9

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 577
    new-instance v0, Lcom/ibm/icu/impl/number/MacroProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/MacroProps;-><init>()V

    .line 578
    new-instance v1, Lcom/ibm/icu/impl/StringSegment;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ibm/icu/impl/StringSegment;-><init>(Ljava/lang/String;Z)V

    .line 579
    new-instance p0, Lcom/ibm/icu/util/CharsTrie;

    sget-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl;->SERIALIZED_STEM_TRIE:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/ibm/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    .line 580
    sget-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    const/4 v4, 0x0

    .line 584
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/impl/StringSegment;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 585
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/StringSegment;->codePointAt(I)I

    move-result v5

    .line 586
    invoke-static {v5}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 591
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 592
    sget-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v3, v6, :cond_0

    .line 595
    invoke-virtual {p0, v5}, Lcom/ibm/icu/util/CharsTrie;->nextForCodePoint(I)Lcom/ibm/icu/util/BytesTrie$Result;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    .line 604
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/StringSegment;->setLength(I)V

    .line 605
    sget-object v8, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v3, v8, :cond_3

    .line 607
    invoke-static {v1, p0, v0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->parseStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/util/CharsTrie;Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v3

    .line 608
    invoke-virtual {p0}, Lcom/ibm/icu/util/CharsTrie;->reset()Lcom/ibm/icu/util/CharsTrie;

    goto :goto_2

    .line 611
    :cond_3
    invoke-static {v3, v1, v0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->parseOption(Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v3

    .line 613
    :goto_2
    invoke-virtual {v1}, Lcom/ibm/icu/impl/StringSegment;->resetLength()V

    .line 616
    invoke-virtual {v1, v4}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    const/4 v4, 0x0

    goto :goto_3

    .line 619
    :cond_4
    sget-object v8, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    if-ne v3, v8, :cond_8

    :goto_3
    if-eqz v7, :cond_6

    .line 629
    sget-object v7, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    if-eq v3, v7, :cond_5

    goto :goto_4

    .line 630
    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/StringSegment;->setLength(I)V

    .line 631
    new-instance p0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Unexpected option separator"

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p0

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 635
    sget-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    if-eq v3, v6, :cond_7

    .line 636
    sget-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    invoke-virtual {v3}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    .line 651
    sget-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    goto :goto_5

    .line 646
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/StringSegment;->setLength(I)V

    .line 647
    new-instance p0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Stem requires an option"

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p0

    .line 655
    :cond_7
    :goto_5
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/impl/StringSegment;->adjustOffset(I)V

    goto/16 :goto_0

    .line 621
    :cond_8
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/StringSegment;->setLength(I)V

    .line 622
    new-instance p0, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string v0, "Unexpected separator character"

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p0

    :cond_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseStem(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/util/CharsTrie;Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;
    .locals 2

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/StringSegment;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    const/16 v1, 0x40

    if-eq v0, v1, :cond_6

    const/16 v1, 0x45

    if-eq v0, v1, :cond_5

    .line 688
    invoke-virtual {p1}, Lcom/ibm/icu/util/CharsTrie;->current()Lcom/ibm/icu/util/BytesTrie$Result;

    move-result-object v0

    .line 690
    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ibm/icu/util/BytesTrie$Result;->FINAL_VALUE:Lcom/ibm/icu/util/BytesTrie$Result;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string p2, "Unknown stem"

    invoke-direct {p1, p2, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1

    .line 695
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl;->STEM_ENUM_VALUES:[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CharsTrie;->getValue()I

    move-result p1

    aget-object p1, v0, p1

    .line 696
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 844
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 840
    :pswitch_0
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 841
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 836
    :pswitch_1
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 837
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 832
    :pswitch_2
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 833
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 827
    :pswitch_3
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 828
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 829
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 823
    :pswitch_4
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 824
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 818
    :pswitch_5
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 819
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 820
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 811
    :pswitch_6
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    instance-of p1, p1, Lcom/ibm/icu/util/Currency;

    if-nez p1, :cond_2

    .line 814
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 815
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 812
    :cond_2
    new-instance p1, Lcom/ibm/icu/number/SkeletonSyntaxException;

    const-string p2, "Duplicated setting"

    invoke-direct {p1, p2, p0}, Lcom/ibm/icu/number/SkeletonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    throw p1

    .line 805
    :pswitch_7
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 806
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 801
    :pswitch_8
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 802
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 764
    :pswitch_9
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 765
    sget-object p0, Lcom/ibm/icu/text/NumberingSystem;->LATIN:Lcom/ibm/icu/text/NumberingSystem;

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 766
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 723
    :pswitch_a
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 724
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    const/4 p0, 0x2

    .line 725
    invoke-static {p0}, Lcom/ibm/icu/number/Scale;->powerOfTen(I)Lcom/ibm/icu/number/Scale;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    .line 726
    sget-object p0, Lcom/ibm/icu/util/NoUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 727
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 794
    :pswitch_b
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 795
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$1100(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 796
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 788
    :pswitch_c
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 789
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$1000(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    .line 790
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 775
    :pswitch_d
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 776
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$900(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    .line 777
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 759
    :pswitch_e
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 760
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$800(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    .line 761
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 750
    :pswitch_f
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 751
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$700(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    .line 752
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 733
    :pswitch_10
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 734
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$600(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    .line 735
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_3

    .line 739
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 737
    :cond_3
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 718
    :pswitch_11
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 719
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$500(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 720
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 705
    :pswitch_12
    iget-object v0, p2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    invoke-static {v0, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 706
    invoke-static {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->access$400(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Notation;

    move-result-object p0

    iput-object p0, p2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    .line 707
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_4

    .line 712
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 710
    :cond_4
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 678
    :cond_5
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 679
    invoke-static {p0, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$200(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 680
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 674
    :cond_6
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 675
    invoke-static {p0, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$100(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 676
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 682
    :cond_7
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 683
    invoke-static {p0, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$300(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 684
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    .line 670
    :cond_8
    iget-object p1, p2, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    invoke-static {p1, p0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->checkNull(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 671
    invoke-static {p0, p2}, Lcom/ibm/icu/number/NumberSkeletonImpl$BlueprintHelpers;->access$000(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 672
    sget-object p0, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
