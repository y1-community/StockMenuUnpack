.class abstract Lcom/ibm/icu/text/PluralRules$BinaryConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BinaryConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:Lcom/ibm/icu/text/PluralRules$Constraint;

.field protected final b:Lcom/ibm/icu/text/PluralRules$Constraint;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V
    .locals 0

    .line 1787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1789
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;

    return-void
.end method
