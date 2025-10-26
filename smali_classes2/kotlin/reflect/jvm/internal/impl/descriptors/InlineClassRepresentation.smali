.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/InlineClassRepresentation;
.super Ljava/lang/Object;
.source "InlineClassRepresentation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type::",
        "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final underlyingPropertyName:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field private final underlyingType:Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "TType;)V"
        }
    .end annotation

    const-string v0, "underlyingPropertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlyingType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/InlineClassRepresentation;->underlyingPropertyName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 13
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/InlineClassRepresentation;->underlyingType:Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    return-void
.end method


# virtual methods
.method public final getUnderlyingPropertyName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .locals 1

    .line 12
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/InlineClassRepresentation;->underlyingPropertyName:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object v0
.end method

.method public final getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/InlineClassRepresentation;->underlyingType:Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    return-object v0
.end method
