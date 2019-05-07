const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#1f212a", /* black   */
  [1] = "#4DE275", /* red     */
  [2] = "#626688", /* green   */
  [3] = "#A46DAF", /* yellow  */
  [4] = "#DB6EB0", /* blue    */
  [5] = "#68A2B4", /* magenta */
  [6] = "#7CCADD", /* cyan    */
  [7] = "#d1bdee", /* white   */

  /* 8 bright colors */
  [8]  = "#9284a6",  /* black   */
  [9]  = "#4DE275",  /* red     */
  [10] = "#626688", /* green   */
  [11] = "#A46DAF", /* yellow  */
  [12] = "#DB6EB0", /* blue    */
  [13] = "#68A2B4", /* magenta */
  [14] = "#7CCADD", /* cyan    */
  [15] = "#d1bdee", /* white   */

  /* special colors */
  [256] = "#1f212a", /* background */
  [257] = "#d1bdee", /* foreground */
  [258] = "#d1bdee",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
