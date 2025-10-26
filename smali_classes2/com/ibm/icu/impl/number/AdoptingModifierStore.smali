.class public Lcom/ibm/icu/impl/number/AdoptingModifierStore;
.super Ljava/lang/Object;
.source "AdoptingModifierStore.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/ModifierStore;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field frozen:Z

.field final mods:[Lcom/ibm/icu/impl/number/Modifier;

.field private final negZero:Lcom/ibm/icu/impl/number/Modifier;

.field private final negative:Lcom/ibm/icu/impl/number/Modifier;

.field private final posZero:Lcom/ibm/icu/impl/number/Modifier;

.field private final positive:Lcom/ibm/icu/impl/number/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->positive:Lcom/ibm/icu/impl/number/Modifier;

    .line 45
    iput-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->posZero:Lcom/ibm/icu/impl/number/Modifier;

    .line 46
    iput-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negZero:Lcom/ibm/icu/impl/number/Modifier;

    .line 47
    iput-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negative:Lcom/ibm/icu/impl/number/Modifier;

    .line 48
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Modifier;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->frozen:Z

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->positive:Lcom/ibm/icu/impl/number/Modifier;

    .line 29
    iput-object p2, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->posZero:Lcom/ibm/icu/impl/number/Modifier;

    .line 30
    iput-object p3, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negZero:Lcom/ibm/icu/impl/number/Modifier;

    .line 31
    iput-object p4, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negative:Lcom/ibm/icu/impl/number/Modifier;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->frozen:Z

    return-void
.end method

.method private static getModIndex(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)I
    .locals 1

    .line 89
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result p1

    sget v0, Lcom/ibm/icu/impl/number/Modifier$Signum;->COUNT:I

    mul-int p1, p1, v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public freeze()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->frozen:Z

    return-void
.end method

.method public getModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->getModIndex(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getModifierWithoutPlural(Lcom/ibm/icu/impl/number/Modifier$Signum;)Lcom/ibm/icu/impl/number/Modifier;
    .locals 1

    .line 65
    sget-object v0, Lcom/ibm/icu/impl/number/AdoptingModifierStore$1;->$SwitchMap$com$ibm$icu$impl$number$Modifier$Signum:[I

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/Modifier$Signum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negative:Lcom/ibm/icu/impl/number/Modifier;

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unreachable"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->negZero:Lcom/ibm/icu/impl/number/Modifier;

    return-object p1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->posZero:Lcom/ibm/icu/impl/number/Modifier;

    return-object p1

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->positive:Lcom/ibm/icu/impl/number/Modifier;

    return-object p1
.end method

.method public setModifier(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->mods:[Lcom/ibm/icu/impl/number/Modifier;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/number/AdoptingModifierStore;->getModIndex(Lcom/ibm/icu/impl/number/Modifier$Signum;Lcom/ibm/icu/impl/StandardPlural;)I

    move-result p1

    aput-object p3, v0, p1

    return-void
.end method
