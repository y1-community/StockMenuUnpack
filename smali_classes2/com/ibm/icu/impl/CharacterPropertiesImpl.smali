.class public final Lcom/ibm/icu/impl/CharacterPropertiesImpl;
.super Ljava/lang/Object;
.source "CharacterPropertiesImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NUM_INCLUSIONS:I = 0x28

.field private static final inclusions:[Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/ibm/icu/text/UnicodeSet;

    .line 23
    sput-object v0, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->inclusions:[Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 4

    const-class v0, Lcom/ibm/icu/impl/CharacterPropertiesImpl;

    monitor-enter v0

    const/4 v1, 0x0

    .line 27
    :goto_0
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->inclusions:[Lcom/ibm/icu/text/UnicodeSet;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    .line 28
    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 2

    const-class v0, Lcom/ibm/icu/impl/CharacterPropertiesImpl;

    monitor-enter v0

    const/16 v1, 0x1000

    if-gt v1, p0, :cond_0

    const/16 v1, 0x1019

    if-ge p0, v1, :cond_0

    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getIntPropInclusions(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 119
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getSource(I)I

    move-result p0

    .line 120
    invoke-static {p0}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForSource(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getInclusionsForSource(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .line 33
    sget-object v0, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->inclusions:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    packed-switch p0, :pswitch_data_0

    .line 74
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInclusions(unknown src "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_1
    invoke-static {p0, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->ulayout_addPropertyStarts(ILcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 60
    :pswitch_2
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 54
    :pswitch_4
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 51
    :pswitch_5
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 47
    :pswitch_6
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v2

    iget-object v2, v2, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/Normalizer2Impl;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 48
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 43
    :pswitch_7
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 44
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 66
    :pswitch_8
    sget-object v2, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UBiDiProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 63
    :pswitch_9
    sget-object v2, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCaseProps;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 40
    :pswitch_a
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V

    goto :goto_0

    .line 37
    :pswitch_b
    sget-object v2, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 79
    :goto_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    aput-object v1, v0, p0

    .line 81
    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getIntPropInclusions(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 9

    add-int/lit8 v0, p0, 0xf

    add-int/lit16 v0, v0, -0x1000

    .line 87
    sget-object v1, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->inclusions:[Lcom/ibm/icu/text/UnicodeSet;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 88
    aget-object p0, v1, v0

    return-object p0

    .line 90
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getSource(I)I

    move-result v1

    .line 91
    invoke-static {v1}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForSource(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    .line 94
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    .line 97
    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v6

    .line 98
    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    :goto_1
    if-gt v7, v6, :cond_2

    .line 100
    invoke-static {v7, p0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v8

    if-eq v8, v5, :cond_1

    .line 102
    invoke-virtual {v2, v7}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move v5, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_3
    sget-object p0, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->inclusions:[Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    aput-object v1, p0, v0

    return-object v1
.end method
