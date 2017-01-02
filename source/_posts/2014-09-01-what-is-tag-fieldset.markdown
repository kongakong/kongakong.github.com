---
layout: post
title: "What is tag fieldset?"
date: 2014-09-01 09:40
comments: true
categories: html stackoverflow
---

[From StackOverflow](http://stackoverflow.com/questions/9741328/why-do-we-need-a-fieldset-tag)


The most obvious, practical example is:

    <fieldset>
        <legend>Colour</legend>
        <label><input type="radio" name="colour" value="blue"> Blue </label>
        <label><input type="radio" name="colour" value="red"> Red </label>
        <label><input type="radio" name="colour" value="green"> Green </label>
    </fieldset>

This allows each radio button to be labeled while also providing a label for the group as a whole. This is especially important where assistive technology (such as a screen reader) is being used where the association of the controls and their legend cannot be implied by visual presentation.
