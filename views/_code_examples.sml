pre.input
  | &lt;<span class='obj'>section</span>&gt;
  |   &lt;<span class='obj'>p</span>&gt;Hi, I’m {{ name }}!&lt;/<span class='obj'>p</span>&gt;
  |   &lt;<span class='obj'>p</span> <span class='name'>md</span>&gt;look, **markdown**!&lt;/<span class='obj'>p</span>&gt;
  | &lt;/<span class='obj'>section</span>&gt;
.arrow
pre.process.middle
  | <span class='var'>const</span> <span class='name'>reshape</span> = <span class='bif'>require</span>(<span class='str'>'reshape'</span>)
  | <span class='var'>const</span> <span class='name'>expr</span> = <span class='bif'>require</span>(<span class='str'>'reshape-expressions'</span>)
  | <span class='var'>const</span> <span class='name'>content</span> = <span class='bif'>require</span>(<span class='str'>'reshape-content'</span>)
  | <span class='var'>const</span> <span class='name'>marked</span> = <span class='bif'>require</span>(<span class='str'>'marked'</span>)
  br
  br
  | <span class='fn'>reshape</span>({
  |   plugins<span class='colon'>:</span> [
  |     <span class='fn'>expr</span>(),
  |     <span class='fn'>content</span>({ md<span class='colon'>:</span> marked })
  |   ]
  | }).<span class='fn'>process</span>(htmlInput)
  |   .<span class='fn'>then</span>((res) => {
  |     <span class='obj'>res</span>.<span class='fn'>output</span>({ name<span class='colon'>:</span> <span class='str'>'reshape'</span> })
  |   })
.arrow
pre.output
  | &lt;<span class='obj'>section</span>&gt;
  |   &lt;<span class='obj'>p</span>&gt;Hi, I’m reshape!&lt;/<span class='obj'>p</span>&gt;
  |   &lt;<span class='obj'>p</span>&gt;look, &lt;<span class='obj'>strong</span>&gt;markdown&lt;<span class='obj'>strong</span>&gt;!&lt;/<span class='obj'>p</span>&gt;
  | &lt;/<span class='obj'>section</span>&gt;
