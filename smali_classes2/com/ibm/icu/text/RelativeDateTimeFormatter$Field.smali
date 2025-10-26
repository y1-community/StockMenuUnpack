.class public Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;
.super Ljava/text/Format$Field;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

.field public static final NUMERIC:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

.field private static final serialVersionUID:J = -0x49efbdc2d2fa06e5L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 424
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    const-string v1, "literal"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    .line 431
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    const-string v1, "numeric"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->LITERAL:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->NUMERIC:Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 451
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
