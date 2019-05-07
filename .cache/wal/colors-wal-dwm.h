static const char norm_fg[] = "#d1bdee";
static const char norm_bg[] = "#1f212a";
static const char norm_border[] = "#9284a6";

static const char sel_fg[] = "#d1bdee";
static const char sel_bg[] = "#626688";
static const char sel_border[] = "#d1bdee";

static const char urg_fg[] = "#d1bdee";
static const char urg_bg[] = "#4DE275";
static const char urg_border[] = "#4DE275";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
