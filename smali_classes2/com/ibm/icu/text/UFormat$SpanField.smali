.class public abstract Lcom/ibm/icu/text/UFormat$SpanField;
.super Ljava/text/Format$Field;
.source "UFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanField"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x41adff5193cc91ceL


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method
