.class public final enum Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrimOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum BOTH:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum LEADING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

.field public static final enum TRAILING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 323
    new-instance v0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v1, "LEADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->LEADING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    .line 329
    new-instance v1, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v3, "BOTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->BOTH:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    .line 335
    new-instance v3, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    const-string v5, "TRAILING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->TRAILING:Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 317
    sput-object v5, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1

    .line 317
    const-class v0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;
    .locals 1

    .line 317
    sget-object v0, Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->$VALUES:[Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/UnicodeSetSpanner$TrimOption;

    return-object v0
.end method
