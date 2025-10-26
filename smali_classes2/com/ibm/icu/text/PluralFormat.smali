.class public Lcom/ibm/icu/text/PluralFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "PluralFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;,
        Lcom/ibm/icu/text/PluralFormat$PluralSelector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private numberFormat:Lcom/ibm/icu/text/NumberFormat;

.field private transient offset:D

.field private parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private transient pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

.field private ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 191
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v2, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;)V
    .locals 3

    .line 225
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 226
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v2, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    .line 322
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 323
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v2, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 324
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .line 201
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 202
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)V
    .locals 3

    .line 263
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 264
    invoke-direct {p0, v0, p2, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;)V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 356
    invoke-direct {p0, v0, p2, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 357
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;Lcom/ibm/icu/text/NumberFormat;)V
    .locals 3

    .line 371
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 372
    invoke-direct {p0, v0, p2, p1, p4}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 373
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;)V
    .locals 3

    .line 238
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 239
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    .line 339
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 340
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 341
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3

    .line 306
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 307
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 308
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 288
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 149
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 155
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 176
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 181
    iput-wide v1, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    .line 564
    new-instance v1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 289
    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    sget-object v2, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 214
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/PluralFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Lcom/ibm/icu/text/PluralRules$PluralType;)V
    .locals 0

    .line 276
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/PluralFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Lcom/ibm/icu/text/PluralRules;)V
    .locals 0

    .line 252
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/PluralFormat;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/text/PluralFormat;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object p0
.end method

.method static findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .locals 15

    move-object v0, p0

    .line 452
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v1

    .line 454
    invoke-virtual/range {p0 .. p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 455
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v2

    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move/from16 v4, p1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    add-int/lit8 v8, v4, 0x1

    .line 484
    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 485
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    .line 486
    sget-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_2

    goto/16 :goto_4

    .line 491
    :cond_2
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    add-int/lit8 v4, v8, 0x1

    .line 493
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 494
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v8

    cmpl-double v11, p4, v8

    if-nez v11, :cond_3

    return v4

    :cond_3
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move v8, v4

    goto :goto_3

    :cond_4
    if-nez v6, :cond_9

    const-string v9, "other"

    .line 501
    invoke-virtual {p0, v4, v9}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v7, :cond_9

    if-eqz v5, :cond_5

    .line 504
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    goto :goto_2

    :cond_5
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move v7, v8

    goto :goto_3

    :cond_6
    if-nez v5, :cond_7

    sub-double v11, p4, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 513
    invoke-interface {v13, v14, v11, v12}, Lcom/ibm/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_8

    .line 514
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :cond_8
    :goto_1
    if-nez v6, :cond_a

    .line 521
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    move v7, v8

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 529
    :cond_a
    :goto_3
    invoke-virtual {p0, v8}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v4

    add-int/2addr v4, v10

    if-lt v4, v1, :cond_1

    :goto_4
    return v7
.end method

.method private format(Ljava/lang/Number;D)Ljava/lang/String;
    .locals 10

    .line 610
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 616
    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    sub-double v2, p2, v0

    .line 619
    iget-object v4, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    instance-of v5, v4, Lcom/ibm/icu/text/DecimalFormat;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    .line 621
    check-cast v4, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DecimalFormat;->toNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 623
    iget-wide v4, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    cmpl-double v1, v4, v6

    if-nez v1, :cond_1

    .line 625
    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(D)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    .line 629
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->getFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    goto :goto_2

    :cond_2
    cmpl-double v5, v0, v6

    if-nez v5, :cond_3

    .line 633
    invoke-virtual {v4, p1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 635
    :cond_3
    invoke-virtual {v4, v2, v3}, Lcom/ibm/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 637
    new-instance p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {p1, v2, v3}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    :goto_2
    move-object v7, p1

    .line 640
    iget-object v4, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Lcom/ibm/icu/text/PluralFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result p1

    const/4 p2, 0x0

    .line 644
    iget-object p3, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    .line 646
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    .line 648
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v3

    .line 649
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v4, :cond_6

    if-nez p2, :cond_5

    .line 651
    iget-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p1, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 653
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 655
    :cond_6
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v2, v4, :cond_9

    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 657
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 666
    :cond_7
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v1, :cond_4

    if-nez p2, :cond_8

    .line 668
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    :cond_8
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v1, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 672
    iget-object p3, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 673
    iget-object p3, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    .line 674
    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-static {v1, v3, p3, p2}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_3

    :cond_9
    :goto_4
    if-nez p2, :cond_a

    .line 659
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    :cond_a
    iget-object v4, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v4, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 662
    sget-object p3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, p3, :cond_b

    .line 663
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :cond_b
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    goto :goto_3

    .line 611
    :cond_c
    :goto_5
    iget-object p2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V
    .locals 0

    .line 390
    iput-object p3, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    if-nez p1, :cond_0

    .line 391
    invoke-static {p3, p2}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 393
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralFormat;->resetPattern()V

    if-nez p4, :cond_1

    .line 394
    iget-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 883
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 884
    new-instance p1, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Lcom/ibm/icu/text/PluralFormat;Lcom/ibm/icu/text/PluralFormat$1;)V

    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRulesWrapper:Lcom/ibm/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 887
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 888
    iget-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 889
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 2

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 402
    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2

    .line 416
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 421
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    .line 422
    iget-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralFormat;->offset:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 424
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralFormat;->resetPattern()V

    .line 425
    throw p1
.end method

.method public equals(Lcom/ibm/icu/text/PluralFormat;)Z
    .locals 0

    .line 856
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 841
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/PluralFormat;

    .line 842
    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 843
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 844
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v3, p1, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 845
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    iget-object p1, p1, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    .line 846
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final format(D)Ljava/lang/String;
    .locals 1

    .line 577
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ibm/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 600
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_0

    .line 603
    check-cast p1, Ljava/lang/Number;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/ibm/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 601
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a Number"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 692
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 707
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method parseType(Ljava/lang/String;Lcom/ibm/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 720
    iget-object v4, v0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 727
    :cond_0
    iget-object v4, v0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v4

    .line 728
    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v7

    const/4 v8, 0x0

    if-gez v7, :cond_1

    const/4 v7, 0x0

    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v4, :cond_9

    .line 743
    iget-object v13, v0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v13, v9}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 744
    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    sget-object v13, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v9, v13, :cond_2

    move v9, v14

    goto :goto_0

    .line 749
    :cond_2
    iget-object v9, v0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v9, v14}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 750
    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v14, v15, :cond_3

    move v9, v13

    goto :goto_0

    .line 755
    :cond_3
    iget-object v14, v0, Lcom/ibm/icu/text/PluralFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v14, v13}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v13

    .line 756
    invoke-virtual {v13}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v14, v5, :cond_4

    move v9, v15

    goto :goto_0

    .line 761
    :cond_4
    iget-object v5, v0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v14

    invoke-virtual {v13}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_6

    .line 764
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_5

    goto :goto_1

    .line 769
    :cond_5
    invoke-interface {v2, v1, v5, v7}, Lcom/ibm/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v6

    .line 770
    aget v6, v6, v8

    goto :goto_1

    .line 774
    :cond_6
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    if-ltz v6, :cond_8

    if-lt v6, v11, :cond_8

    if-eqz v12, :cond_7

    .line 776
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    if-le v14, v8, :cond_8

    .line 779
    :cond_7
    iget-object v8, v0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v9

    invoke-virtual {v13}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v12, v5

    move v11, v6

    move-object v10, v8

    :cond_8
    move v9, v15

    const/4 v8, 0x0

    goto :goto_0

    :cond_9
    if-eqz v10, :cond_a

    .line 783
    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 784
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v11, v1

    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v10

    :cond_a
    const/4 v1, -0x1

    .line 789
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 790
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_b
    :goto_2
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 721
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 722
    invoke-virtual {v3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v2
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 813
    sget-object p1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 815
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/ibm/icu/text/PluralFormat;->init(Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/text/PluralRules$PluralType;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/NumberFormat;)V

    return-void
.end method

.method public setNumberFormat(Lcom/ibm/icu/text/NumberFormat;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rules=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/PluralFormat;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pattern=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", format=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/text/PluralFormat;->numberFormat:Lcom/ibm/icu/text/NumberFormat;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
