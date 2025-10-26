.class public Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;
.super Ljava/lang/Object;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Where"
.end annotation


# instance fields
.field public codeFailure:Ljava/lang/String;

.field public fieldFailure:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;Ljava/lang/String;)Z
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    .line 38
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->codeFailure:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    if-nez v0, :cond_0

    const-string v0, "OK"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->fieldFailure:Lcom/ibm/icu/impl/ValidIdentifiers$Datatype;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LocaleValidityChecker$Where;->codeFailure:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
