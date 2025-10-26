.class final Lcom/ibm/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ICUData;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUData$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URL;
    .locals 2

    .line 98
    const-class v0, Lcom/ibm/icu/impl/ICUData;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
