# Academic Report Writing
This page is to provide some tips on how to approach or just improve your academic report writing. This is intended for engineering undergraduate students and is to encourage you towards the standard expected in academic papers. Each subject is different, but for a subject that requests a design report/a report that goes beyond detailing implementation, this should be applicable. I reckon some of this advice will be useful towards undergraduate theses too.

#### Contents:
- [The Marker's Perspective](#markers-perspective)
- [Section-Specific Advice](#section-spec-advice)
- [If your code didn't work](#bad-code)

*Note: Some subjects ask for reports that are simply after an explanation of the implementation and a brief presentation of your results, i.e. 'Do xyz and show these specific results'. In this case, it can be sufficient to show the code/maths and show the plots. This is however a rare case and is simply mentioned to highlight the contrast.*

## Design Reports
This type of report is very common in assignments. The expectation is that you describe the problem (introduction), explain what you did/how (method), present the results you obtain, analyse/discuss these results in the context of the rest of the report, and finally conclude.

<a name=markers-perspective></a>
### The Marker's Perspective
A way to improve your reports is to think about what the marker/audience is looking for:
- What is the purpose of this report? Consider both the fact that this is an assignment and also that it is potentially a toy example of a real-world proposal or investigation
- What is the intended context? Is this an elevator pitch, a thorough investigation, or something in between? Advice from your unit coordinator or the page limit can be used to give you an idea of what's expected.
- Who is the audience? Are you writing for a technical audience? Will your boss have the time and expertise to understand what you have written? In the case of an assignment, you goal is to demonstrate your understanding. In that case, you should write as though the reader is familiar with the prerequisite material but not the course material

With that in mind, here's some ideas of what we typically look for as markers for design report assignments:
- Show your understanding of the code/concept
- Try to dig deeper and really understand what's happening under the hood: if you can understand not just what a method does but how it works, it'll show in your report and the analysis of the results will be easier
- The assignments are written to prepare you for work/academia
- - work: there's a fair chance that your manager/the person making decisions may not have an engineering background. They need to be able to understand your results. If it can't be explained clearly and concisely, they'll simply dismiss you idea.
- - academia: a high standard and professional finish is expected. When someone reads your paper, they'll probably start by reading the abstract, introduction and conclusion and running their eyes over your figures. If they consider it sufficiently unclear or don't see the relevance, they won't read it. So like in industry, prioritise clarity and readability. Try to make your content approachable (though obviously not to the point of insulting your reader).

<a name=section-spec-advice></a>
### Section-Specific Advice
Best advice I can think of: as you read academic papers, find some that you like, identify what you like about them and try to encorporate those features into your writing style.

#### Abstract
Provide an overview of the paper/project. Each of the following points should be 1-2 sentences at most.
- What did you do (1-2 sentences on your idea)?
- Why does it matter (what problem are you solving? what are you addressing? what was your goal)?
- What results do you present: Not too much detail here, but are they promising? Do they validate your method/hypothesis (as appropriate)?

#### Introduction
Tell the reader what you're doing. Explain the motivation and what you hope to achieve. Mention your contributions and, if appropriate, what each section of your paper covers.

#### Method
How did you do it? Prioritise clarity and neatness.

#### Results
Ensure your results are clear and nicely presented. Think back to your introduction and motivation. What do you want the reader to know? How can you present this most clearly/show the specific results most obviously? For example, if you're trying to show the accuracy of different estimation methods, you may wish to show how the errors compare for each parameter. This would allow you to easily see how the methods compare. The clearer your results, the easier your discussion/analysis will be to write.

Also try to avoid showing too much: if you have several plots that add minimal value to your report (either due to legibility or content), avoid including them. This includes results in the appendix. Avoid having an almost-infinite appendix of unmentioned results. Each plot in your report should be mentioned or referred to somewhere. If it's not, think about what value it's adding to your report.

#### Discussion
Tie together your introduction, motivation, any hypotheses, and your results to really pull as much as you can from the results. Again, think about the purpose of the report and who your audience is (see [The Marker's Perspective section above](#the-markers-perspective)).

Some other things to think about:
- What do these results mean? Show, describe. Be specific: avoid 'x is a bit bigger than y' in favour of 'x is 10% greater than y'
- Why does this result matter? Why is it important? what does it tell you? 
- Use this as an opportunity to demonstrate and deepen your understanding of the material: why do you think this occurs? What is it about the method that causes this result? Why are those results expected (or not) and what does that tell you?

#### References
- Use a standard referencing style.
- Cite your sources inline. It's not enough to say 'I did some research and found ...' then have a list of references at the end - a good academic report will have content that can be traced back. Can the reader go through your references and find the source of an assumption you made or an equation you found? The reader should have the resources to really dig into your paper and understand the background and reasoning behind what you have written.

<a name=bad-code></a>
### If you code didn't work
We've all experienced the disappointing situation where you've put so much work into your assignment but the code just isn't working and so you can't generate your results. In this case, put in what you can and demonstrate your understanding. Depending on the marking criteria, it may still pay off. Continuing with the example of comparing estimation methods, you can still write up the introduction and methodology. Additionally, you can say what you would expect the results to look like and why. This allows you to show your marker that you know what you're doing and they may be able to reward you for this more than you expect.
