Write a comment abouth the test here.
*** Parameters: ***
{:use_numbered_headers => true}
*** Markdown input: ***

* Table of Contents
{:toc}

A title with *emphasis*
=======================

## Try ## {#try}

First Subheader
---------------
{#foo}

Say something.

### A title with *emphasis* ###

Say something else.

Second Subheader
--------------

You don't say.

*** Output of inspect ***
md_el(:document,[
    md_el(:ul, md_el(:li, "Table of Contents", {:want_my_paragraph=>false}), {}, [[:ref, "toc"]]),
	md_el(:header,["A title with ", md_em(["emphasis"])],{:level=>1},[]),
	md_el(:header, "Try", {:level=>2}, [[:id, "try"]]),
	md_el(:header, "First Subheader", {:level=>2}),
	md_par("Say something."),
	md_el(:header, ["A title with ", md_em("emphasis")], {:level=>3}),
	md_par("Say something else."),
	md_el(:header, "Second Subheader", {:level=>2}),
	md_par(["You don", md_entity("rsquo"), "t say."])
],{},[])
*** Output of to_html ***
<div class="maruku_toc"><ul><li><span class="maruku_section_number">1. </span><a href="#a_title_with_emphasis_1">A title with <em>emphasis</em></a><ul><li><span class="maruku_section_number">1.1. </span><a href="#try">Try</a></li><li><span class="maruku_section_number">1.2. </span><a href="#foo">First Subheader</a><ul><li><span class="maruku_section_number">1.2.1. </span><a href="#a_title_with_emphasis_4">A title with <em>emphasis</em></a></li></ul></li><li><span class="maruku_section_number">1.3. </span><a href="#second_subheader_5">Second Subheader</a></li></ul></li></ul></div>
<h1 id="a_title_with_emphasis_1"><span class="maruku_section_number">1. </span>A title with <em>emphasis</em></h1>

<h2 id="try"><span class="maruku_section_number">1.1. </span>Try</h2>

<h2 id="foo"><span class="maruku_section_number">1.2. </span>First Subheader</h2>

<p>Say something.</p>

<h3 id="a_title_with_emphasis_4"><span class="maruku_section_number">1.2.1. </span>A title with <em>emphasis</em></h3>

<p>Say something else.</p>

<h2 id="second_subheader_5"><span class="maruku_section_number">1.3. </span>Second Subheader</h2>

<p>You don’t say.</p>
*** Output of to_latex ***
\noindent1. \hyperlink{a_title_with_emphasis_1}{A title with \emph{emphasis}}\dotfill \pageref*{a_title_with_emphasis_1} \linebreak
\noindent1.1. \hyperlink{try}{Try}\dotfill \pageref*{try} \linebreak
\noindent1.2. \hyperlink{foo}{First Subheader}\dotfill \pageref*{foo} \linebreak
\noindent1.2.1. \hyperlink{a_title_with_emphasis_4}{A title with \emph{emphasis}}\dotfill \pageref*{a_title_with_emphasis_4} \linebreak
\noindent1.3. \hyperlink{second_subheader_5}{Second Subheader}\dotfill \pageref*{second_subheader_5} \linebreak


\hypertarget{a_title_with_emphasis_1}{}\section*{{1. A title with \emph{emphasis}}}\label{a_title_with_emphasis_1}

\hypertarget{try}{}\subsection*{{1.1. Try}}\label{try}

\hypertarget{foo}{}\subsection*{{1.2. First Subheader}}\label{foo}

Say something.

\hypertarget{a_title_with_emphasis_4}{}\subsubsection*{{1.2.1. A title with \emph{emphasis}}}\label{a_title_with_emphasis_4}

Say something else.

\hypertarget{second_subheader_5}{}\subsection*{{1.3. Second Subheader}}\label{second_subheader_5}

You don't say.
*** Output of to_md ***
# A title with *emphasis* #

## A title with *emphasis* ##

#### A title with *emphasis* ####
*** Output of to_s ***
A title with emphasisA title with emphasisA title with emphasis
