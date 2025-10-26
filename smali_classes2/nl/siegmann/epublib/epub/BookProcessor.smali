.class public interface abstract Lnl/siegmann/epublib/epub/BookProcessor;
.super Ljava/lang/Object;
.source "BookProcessor.java"


# static fields
.field public static final IDENTITY_BOOKPROCESSOR:Lnl/siegmann/epublib/epub/BookProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lnl/siegmann/epublib/epub/BookProcessor$1;

    invoke-direct {v0}, Lnl/siegmann/epublib/epub/BookProcessor$1;-><init>()V

    sput-object v0, Lnl/siegmann/epublib/epub/BookProcessor;->IDENTITY_BOOKPROCESSOR:Lnl/siegmann/epublib/epub/BookProcessor;

    return-void
.end method


# virtual methods
.method public abstract processBook(Lnl/siegmann/epublib/domain/Book;)Lnl/siegmann/epublib/domain/Book;
.end method
