.class Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;
.super Ljava/lang/Object;
.source "LocalizedNumberFormatterAsFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field languageTag:Ljava/lang/String;

.field skeleton:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/number/NumberFormatter;->forSkeleton(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->toFormat()Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 142
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    .line 143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 135
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->languageTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LocalizedNumberFormatterAsFormat$Proxy;->skeleton:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
