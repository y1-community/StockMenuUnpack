.class Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DictionaryCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fBoundary:I

.field fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

.field fFirstRuleStatusIndex:I

.field fLimit:I

.field fOtherRuleStatusIndex:I

.field fPositionInCache:I

.field fStart:I

.field fStatusIndex:I

.field final synthetic this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1049
    const-class v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 1229
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1230
    new-instance p1, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    :try_start_0
    iget-object p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1246
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1247
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1248
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1249
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1250
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1251
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return-void

    :catch_0
    move-exception p1

    .line 1243
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method following(I)Z
    .locals 5

    .line 1061
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_5

    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 1069
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 1070
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1071
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1072
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2

    .line 1075
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    .line 1077
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1078
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1084
    :cond_2
    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    :goto_0
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1085
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-le v0, p1, :cond_3

    .line 1087
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1088
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1084
    :cond_3
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_0

    .line 1095
    :cond_4
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2

    .line 1062
    :cond_5
    :goto_1
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v2
.end method

.method populateDictionary(IIII)V
    .locals 4

    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 1155
    iput p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1156
    iput p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1169
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1170
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1171
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object p4, p4, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result p4

    int-to-short p4, p4

    .line 1172
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper;->fFTable:Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v0, v0, Lcom/ibm/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1175
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, p2, :cond_1

    if-ge p4, v0, :cond_1

    .line 1176
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1177
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object p4, p4, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result p4

    :goto_1
    int-to-short p4, p4

    goto :goto_0

    :cond_1
    if-lt v3, p2, :cond_5

    if-lez v2, :cond_4

    .line 1205
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p3, v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 1210
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p3, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->offer(I)V

    .line 1212
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result p1

    if-le p2, p1, :cond_3

    .line 1213
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1215
    :cond_3
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1217
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1218
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    :cond_4
    return-void

    .line 1185
    :cond_5
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p4, p3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$100(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)Lcom/ibm/icu/text/LanguageBreakEngine;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 1190
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p4}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p4

    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-interface {p3, p4, p1, p2, v3}, Lcom/ibm/icu/text/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result p3

    add-int/2addr v2, p3

    .line 1194
    :cond_6
    iget-object p3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {p3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object p3

    invoke-static {p3}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p3

    .line 1195
    iget-object p4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object p4, p4, Lcom/ibm/icu/text/RuleBasedBreakIterator;->fRData:Lcom/ibm/icu/impl/RBBIDataWrapper;

    iget-object p4, p4, Lcom/ibm/icu/impl/RBBIDataWrapper;->fTrie:Lcom/ibm/icu/util/CodePointTrie;

    invoke-virtual {p4, p3}, Lcom/ibm/icu/util/CodePointTrie;->get(I)I

    move-result p4

    goto :goto_1
.end method

.method preceding(I)Z
    .locals 5

    .line 1100
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, v0, :cond_8

    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    if-le p1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 1106
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1113
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-lez v0, :cond_3

    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    iget v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 1114
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1115
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result p1

    .line 1117
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1118
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_0
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1122
    :cond_3
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-nez v0, :cond_4

    .line 1123
    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1

    .line 1127
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    :goto_1
    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-ltz v0, :cond_7

    .line 1128
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ge v0, p1, :cond_6

    .line 1130
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1131
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne v0, p1, :cond_5

    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_2
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    return v3

    .line 1127
    :cond_6
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_1

    .line 1136
    :cond_7
    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1

    .line 1101
    :cond_8
    :goto_3
    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    return v1
.end method

.method reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1052
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1054
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1055
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1056
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1057
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->removeAllElements()V

    return-void
.end method
