.class final enum Lcom/github/barteksc/pdfviewer/PDFView$State;
.super Ljava/lang/Enum;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/barteksc/pdfviewer/PDFView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1320
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v1, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v3, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v5, "SHOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v5, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1

    .line 1320
    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object p0
.end method

.method public static values()[Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1

    .line 1320
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-virtual {v0}, [Lcom/github/barteksc/pdfviewer/PDFView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object v0
.end method
