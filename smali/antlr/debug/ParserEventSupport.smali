.class public Lantlr/debug/ParserEventSupport;
.super Ljava/lang/Object;
.source "ParserEventSupport.java"


# static fields
.field protected static final CONSUME:I = 0x0

.field protected static final DONE_PARSING:I = 0xf

.field protected static final ENTER_RULE:I = 0x1

.field protected static final EXIT_RULE:I = 0x2

.field protected static final LA:I = 0x3

.field protected static final MATCH:I = 0x4

.field protected static final MATCH_NOT:I = 0x5

.field protected static final MISMATCH:I = 0x6

.field protected static final MISMATCH_NOT:I = 0x7

.field protected static final NEW_LINE:I = 0xe

.field protected static final REPORT_ERROR:I = 0x8

.field protected static final REPORT_WARNING:I = 0x9

.field protected static final SEMPRED:I = 0xa

.field protected static final SYNPRED_FAILED:I = 0xb

.field protected static final SYNPRED_STARTED:I = 0xc

.field protected static final SYNPRED_SUCCEEDED:I = 0xd


# instance fields
.field private controller:Lantlr/debug/ParserController;

.field private doneListeners:Ljava/util/Hashtable;

.field private matchEvent:Lantlr/debug/ParserMatchEvent;

.field private matchListeners:Ljava/util/Vector;

.field private messageEvent:Lantlr/debug/MessageEvent;

.field private messageListeners:Ljava/util/Vector;

.field private newLineEvent:Lantlr/debug/NewLineEvent;

.field private newLineListeners:Ljava/util/Vector;

.field private ruleDepth:I

.field private semPredEvent:Lantlr/debug/SemanticPredicateEvent;

.field private semPredListeners:Ljava/util/Vector;

.field private source:Ljava/lang/Object;

.field private synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

.field private synPredListeners:Ljava/util/Vector;

.field private tokenEvent:Lantlr/debug/ParserTokenEvent;

.field private tokenListeners:Ljava/util/Vector;

.field private traceEvent:Lantlr/debug/TraceEvent;

.field private traceListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lantlr/debug/ParserEventSupport;->ruleDepth:I

    .line 54
    new-instance v0, Lantlr/debug/ParserMatchEvent;

    invoke-direct {v0, p1}, Lantlr/debug/ParserMatchEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    .line 55
    new-instance v0, Lantlr/debug/MessageEvent;

    invoke-direct {v0, p1}, Lantlr/debug/MessageEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    .line 56
    new-instance v0, Lantlr/debug/ParserTokenEvent;

    invoke-direct {v0, p1}, Lantlr/debug/ParserTokenEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenEvent:Lantlr/debug/ParserTokenEvent;

    .line 57
    new-instance v0, Lantlr/debug/TraceEvent;

    invoke-direct {v0, p1}, Lantlr/debug/TraceEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    .line 58
    new-instance v0, Lantlr/debug/SemanticPredicateEvent;

    invoke-direct {v0, p1}, Lantlr/debug/SemanticPredicateEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredEvent:Lantlr/debug/SemanticPredicateEvent;

    .line 59
    new-instance v0, Lantlr/debug/SyntacticPredicateEvent;

    invoke-direct {v0, p1}, Lantlr/debug/SyntacticPredicateEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    .line 60
    new-instance v0, Lantlr/debug/NewLineEvent;

    invoke-direct {v0, p1}, Lantlr/debug/NewLineEvent;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineEvent:Lantlr/debug/NewLineEvent;

    .line 61
    iput-object p1, p0, Lantlr/debug/ParserEventSupport;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addDoneListener(Lantlr/debug/ListenerBase;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    .line 65
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    .line 71
    :cond_1
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    .line 75
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addNewLineListener(Lantlr/debug/NewLineListener;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineListeners:Ljava/util/Vector;

    .line 80
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addParserListener(Lantlr/debug/ParserListener;)V
    .locals 1

    .line 84
    instance-of v0, p1, Lantlr/debug/ParserController;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Lantlr/debug/ParserController;

    invoke-interface {v0, p0}, Lantlr/debug/ParserController;->setParserEventSupport(Lantlr/debug/ParserEventSupport;)V

    .line 86
    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->controller:Lantlr/debug/ParserController;

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addParserMatchListener(Lantlr/debug/ParserMatchListener;)V

    .line 89
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addParserTokenListener(Lantlr/debug/ParserTokenListener;)V

    .line 91
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addMessageListener(Lantlr/debug/MessageListener;)V

    .line 92
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addTraceListener(Lantlr/debug/TraceListener;)V

    .line 93
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V

    .line 94
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V

    return-void
.end method

.method public addParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    .line 98
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    .line 103
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    .line 108
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    .line 113
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public addTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    .line 118
    :cond_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->addDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public fireConsume(I)V
    .locals 3

    .line 122
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenEvent:Lantlr/debug/ParserTokenEvent;

    sget v1, Lantlr/debug/ParserTokenEvent;->CONSUME:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lantlr/debug/ParserTokenEvent;->setValues(III)V

    .line 123
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireDoneParsing()V
    .locals 3

    .line 126
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    sget v1, Lantlr/debug/TraceEvent;->DONE_PARSING:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lantlr/debug/TraceEvent;->setValues(IIII)V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 139
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/debug/ListenerBase;

    const/16 v2, 0xf

    .line 141
    invoke-virtual {p0, v2, v1}, Lantlr/debug/ParserEventSupport;->fireEvent(ILantlr/debug/ListenerBase;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->controller:Lantlr/debug/ParserController;

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0}, Lantlr/debug/ParserController;->checkBreak()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public fireEnterRule(III)V
    .locals 3

    .line 148
    iget v0, p0, Lantlr/debug/ParserEventSupport;->ruleDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lantlr/debug/ParserEventSupport;->ruleDepth:I

    .line 149
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    sget v2, Lantlr/debug/TraceEvent;->ENTER:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lantlr/debug/TraceEvent;->setValues(IIII)V

    .line 150
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    invoke-virtual {p0, v1, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireEvent(ILantlr/debug/ListenerBase;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 178
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "bad type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " for fireEvent()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 174
    :pswitch_0
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ListenerBase;->doneParsing(Lantlr/debug/TraceEvent;)V

    goto/16 :goto_0

    .line 175
    :pswitch_1
    check-cast p2, Lantlr/debug/NewLineListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->newLineEvent:Lantlr/debug/NewLineEvent;

    invoke-interface {p2, p1}, Lantlr/debug/NewLineListener;->hitNewLine(Lantlr/debug/NewLineEvent;)V

    goto/16 :goto_0

    .line 169
    :pswitch_2
    check-cast p2, Lantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lantlr/debug/SyntacticPredicateListener;->syntacticPredicateSucceeded(Lantlr/debug/SyntacticPredicateEvent;)V

    goto/16 :goto_0

    .line 167
    :pswitch_3
    check-cast p2, Lantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lantlr/debug/SyntacticPredicateListener;->syntacticPredicateStarted(Lantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_0

    .line 168
    :pswitch_4
    check-cast p2, Lantlr/debug/SyntacticPredicateListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    invoke-interface {p2, p1}, Lantlr/debug/SyntacticPredicateListener;->syntacticPredicateFailed(Lantlr/debug/SyntacticPredicateEvent;)V

    goto :goto_0

    .line 165
    :pswitch_5
    check-cast p2, Lantlr/debug/SemanticPredicateListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->semPredEvent:Lantlr/debug/SemanticPredicateEvent;

    invoke-interface {p2, p1}, Lantlr/debug/SemanticPredicateListener;->semanticPredicateEvaluated(Lantlr/debug/SemanticPredicateEvent;)V

    goto :goto_0

    .line 172
    :pswitch_6
    check-cast p2, Lantlr/debug/MessageListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    invoke-interface {p2, p1}, Lantlr/debug/MessageListener;->reportWarning(Lantlr/debug/MessageEvent;)V

    goto :goto_0

    .line 171
    :pswitch_7
    check-cast p2, Lantlr/debug/MessageListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    invoke-interface {p2, p1}, Lantlr/debug/MessageListener;->reportError(Lantlr/debug/MessageEvent;)V

    goto :goto_0

    .line 163
    :pswitch_8
    check-cast p2, Lantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserMatchListener;->parserMismatchNot(Lantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    .line 162
    :pswitch_9
    check-cast p2, Lantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserMatchListener;->parserMismatch(Lantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    .line 161
    :pswitch_a
    check-cast p2, Lantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserMatchListener;->parserMatchNot(Lantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    .line 160
    :pswitch_b
    check-cast p2, Lantlr/debug/ParserMatchListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserMatchListener;->parserMatch(Lantlr/debug/ParserMatchEvent;)V

    goto :goto_0

    .line 155
    :pswitch_c
    check-cast p2, Lantlr/debug/ParserTokenListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->tokenEvent:Lantlr/debug/ParserTokenEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserTokenListener;->parserLA(Lantlr/debug/ParserTokenEvent;)V

    goto :goto_0

    .line 158
    :pswitch_d
    check-cast p2, Lantlr/debug/TraceListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lantlr/debug/TraceListener;->exitRule(Lantlr/debug/TraceEvent;)V

    goto :goto_0

    .line 157
    :pswitch_e
    check-cast p2, Lantlr/debug/TraceListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    invoke-interface {p2, p1}, Lantlr/debug/TraceListener;->enterRule(Lantlr/debug/TraceEvent;)V

    goto :goto_0

    .line 154
    :pswitch_f
    check-cast p2, Lantlr/debug/ParserTokenListener;

    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->tokenEvent:Lantlr/debug/ParserTokenEvent;

    invoke-interface {p2, p1}, Lantlr/debug/ParserTokenListener;->parserConsume(Lantlr/debug/ParserTokenEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fireEvents(ILjava/util/Vector;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 186
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/debug/ListenerBase;

    .line 187
    invoke-virtual {p0, p1, v1}, Lantlr/debug/ParserEventSupport;->fireEvent(ILantlr/debug/ListenerBase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->controller:Lantlr/debug/ParserController;

    if-eqz p1, :cond_1

    .line 190
    invoke-interface {p1}, Lantlr/debug/ParserController;->checkBreak()V

    :cond_1
    return-void
.end method

.method public fireExitRule(III)V
    .locals 2

    .line 193
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceEvent:Lantlr/debug/TraceEvent;

    sget v1, Lantlr/debug/TraceEvent;->EXIT:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lantlr/debug/TraceEvent;->setValues(IIII)V

    .line 194
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    .line 195
    iget p1, p0, Lantlr/debug/ParserEventSupport;->ruleDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lantlr/debug/ParserEventSupport;->ruleDepth:I

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lantlr/debug/ParserEventSupport;->fireDoneParsing()V

    :cond_0
    return-void
.end method

.method public fireLA(II)V
    .locals 2

    .line 200
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenEvent:Lantlr/debug/ParserTokenEvent;

    sget v1, Lantlr/debug/ParserTokenEvent;->LA:I

    invoke-virtual {v0, v1, p1, p2}, Lantlr/debug/ParserTokenEvent;->setValues(III)V

    .line 201
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(CI)V
    .locals 8

    .line 204
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR:I

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 205
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(CLantlr/collections/impl/BitSet;I)V
    .locals 8

    .line 208
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR_BITSET:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 209
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(CLjava/lang/String;I)V
    .locals 8

    .line 212
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR_RANGE:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 213
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(ILantlr/collections/impl/BitSet;Ljava/lang/String;I)V
    .locals 8

    .line 216
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->BITSET:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 217
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(ILjava/lang/String;I)V
    .locals 8

    .line 220
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 221
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatch(Ljava/lang/String;I)V
    .locals 8

    .line 224
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->STRING:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 225
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatchNot(CCI)V
    .locals 8

    .line 228
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR:I

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p2}, Ljava/lang/Character;-><init>(C)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 229
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMatchNot(IILjava/lang/String;I)V
    .locals 8

    .line 232
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 233
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(CCI)V
    .locals 8

    .line 236
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR:I

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p2}, Ljava/lang/Character;-><init>(C)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 237
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(CLantlr/collections/impl/BitSet;I)V
    .locals 8

    .line 240
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR_BITSET:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 241
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(CLjava/lang/String;I)V
    .locals 8

    .line 244
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR_RANGE:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 245
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(IILjava/lang/String;I)V
    .locals 8

    .line 248
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 249
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(ILantlr/collections/impl/BitSet;Ljava/lang/String;I)V
    .locals 8

    .line 252
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->BITSET:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 253
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatch(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 256
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->STRING:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 257
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatchNot(CCI)V
    .locals 8

    .line 260
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->CHAR:I

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p2}, Ljava/lang/Character;-><init>(C)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 261
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireMismatchNot(IILjava/lang/String;I)V
    .locals 8

    .line 264
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchEvent:Lantlr/debug/ParserMatchEvent;

    sget v1, Lantlr/debug/ParserMatchEvent;->TOKEN:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lantlr/debug/ParserMatchEvent;->setValues(IILjava/lang/Object;Ljava/lang/String;IZZ)V

    .line 265
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireNewLine(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineEvent:Lantlr/debug/NewLineEvent;

    invoke-virtual {v0, p1}, Lantlr/debug/NewLineEvent;->setValues(I)V

    .line 269
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->newLineListeners:Ljava/util/Vector;

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireReportError(Ljava/lang/Exception;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    sget v1, Lantlr/debug/MessageEvent;->ERROR:I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lantlr/debug/MessageEvent;->setValues(ILjava/lang/String;)V

    .line 273
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireReportError(Ljava/lang/String;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    sget v1, Lantlr/debug/MessageEvent;->ERROR:I

    invoke-virtual {v0, v1, p1}, Lantlr/debug/MessageEvent;->setValues(ILjava/lang/String;)V

    .line 277
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireReportWarning(Ljava/lang/String;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageEvent:Lantlr/debug/MessageEvent;

    sget v1, Lantlr/debug/MessageEvent;->WARNING:I

    invoke-virtual {v0, v1, p1}, Lantlr/debug/MessageEvent;->setValues(ILjava/lang/String;)V

    .line 281
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireSemanticPredicateEvaluated(IIZI)Z
    .locals 1

    .line 284
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredEvent:Lantlr/debug/SemanticPredicateEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lantlr/debug/SemanticPredicateEvent;->setValues(IIZI)V

    .line 285
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return p3
.end method

.method public fireSyntacticPredicateFailed(I)V
    .locals 2

    .line 289
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lantlr/debug/SyntacticPredicateEvent;->setValues(II)V

    .line 290
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireSyntacticPredicateStarted(I)V
    .locals 2

    .line 293
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lantlr/debug/SyntacticPredicateEvent;->setValues(II)V

    .line 294
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method public fireSyntacticPredicateSucceeded(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredEvent:Lantlr/debug/SyntacticPredicateEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lantlr/debug/SyntacticPredicateEvent;->setValues(II)V

    .line 298
    iget-object p1, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lantlr/debug/ParserEventSupport;->fireEvents(ILjava/util/Vector;)V

    return-void
.end method

.method protected refresh(Ljava/util/Vector;)V
    .locals 2

    .line 302
    monitor-enter p1

    .line 303
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 304
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 306
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lantlr/debug/ListenerBase;

    invoke-interface {v1}, Lantlr/debug/ListenerBase;->refresh()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 304
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public refreshListeners()V
    .locals 1

    .line 310
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    .line 311
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    .line 312
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    .line 313
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    .line 314
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    .line 315
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lantlr/debug/ParserEventSupport;->refresh(Ljava/util/Vector;)V

    return-void
.end method

.method public removeDoneListener(Lantlr/debug/ListenerBase;)V
    .locals 3

    .line 318
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_1
    if-nez v1, :cond_2

    .line 325
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->doneListeners:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public removeMessageListener(Lantlr/debug/MessageListener;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->messageListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeNewLineListener(Lantlr/debug/NewLineListener;)V
    .locals 1

    .line 335
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->newLineListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeParserListener(Lantlr/debug/ParserListener;)V
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeParserMatchListener(Lantlr/debug/ParserMatchListener;)V

    .line 341
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeMessageListener(Lantlr/debug/MessageListener;)V

    .line 342
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeParserTokenListener(Lantlr/debug/ParserTokenListener;)V

    .line 343
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeTraceListener(Lantlr/debug/TraceListener;)V

    .line 344
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V

    .line 345
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V

    return-void
.end method

.method public removeParserMatchListener(Lantlr/debug/ParserMatchListener;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->matchListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeParserTokenListener(Lantlr/debug/ParserTokenListener;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->tokenListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeSemanticPredicateListener(Lantlr/debug/SemanticPredicateListener;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->semPredListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeSyntacticPredicateListener(Lantlr/debug/SyntacticPredicateListener;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->synPredListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method

.method public removeTraceListener(Lantlr/debug/TraceListener;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lantlr/debug/ParserEventSupport;->traceListeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lantlr/debug/ParserEventSupport;->removeDoneListener(Lantlr/debug/ListenerBase;)V

    return-void
.end method
