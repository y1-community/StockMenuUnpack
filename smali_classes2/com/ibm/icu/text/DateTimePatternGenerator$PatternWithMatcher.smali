.class Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWithMatcher"
.end annotation


# instance fields
.field public matcherWithSkeleton:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .locals 0

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    iput-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 1973
    iput-object p2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    return-void
.end method
