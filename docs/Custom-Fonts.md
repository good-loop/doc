## Custom Fonts for Advertisers

An advertiser wants the unit to use their font instead of ours...
Here's what we do, and generous estimates of how long it takes.

**TL;DR: Allow 90 minutes of extra work, probably by the tech team, plus overhead for coordinating, getting client sign-off, and doing it twice because the first iteration is never quite what people want.**

Procedure:

1. (Best case: 5 minutes, worst case: 30 minutes) Acquire the font they want to use. Preferably they'll just give it to us as a TTF, OTF, WOFF, EOT or other format. If they haven't...
   - Do they have a sample? The FontSquirrel Matcherator (https://www.fontsquirrel.com/matcherator) is quite good at identifying fonts automatically - even from a relatively small, low-resolution sample.
   - If that didn't work, Identifont's 20-questions system (http://www.identifont.com/) should narrow the possibilities down to the point where you can pick the correct one out of a lineup.
   - Once you know what font it is - hopefully they've used a free font from Google (https://fonts.google.com/). Otherwise, you'll need to acquire it commercially, which is outside the scope of this documentation.
2. (10 minutes) To use the font in the ad-unit, you'll need to subset it. Ads have a tight bandwidth budget for download size (to avoid being slow to load), and we don't need most of the glyphs the average font includes, so we strip them out.
   - Go to the FontSquirrel Web-Font Generator (https://www.fontsquirrel.com/tools/webfont-generator)
   - Upload your font and select "Expert" from the initial radio-buttons.
   - Scroll to the "Subsetting" section, and select "Custom Subsetting" to pop out more options.
   - Select <code>Lowercase</code>, <code>Uppercase</code>, and <code>Numbers</code> from the "Character Types" section.
   - Enter <code>£$©®™!?"'()\*+/-=\_,.…:;#%&@</code> in the "Single Characters" field
   - **If the advert is for a non-English-language audience, make sure any accented characters required are also selected**
   - Click "Download your kit" to get a zip file. You'll want the WOFF file from inside. It's best to rename it to something like <code>[font-name]-subset.woff</code> so it's clear it's the stripped-down version.
3. (10 minutes) Upload the WOFF somewhere publicly accessible - ask Dan A. about this if you're unsure. Copy the URL. Make sure it starts with <code>https</code>, or it'll be blocked by browser security!
4. (5 minutes) Go to the advert on https://portal.good-loop.com/, go to the "Advanced" section, and add a font block to the advert's custom CSS:

```css
@font-face {
  font-family: "INSERT FONT NAME HERE";
  src: url("https://INSERT-FONT-FILE-URL-HERE") format("woff");
  font-weight: normal;
  font-style: normal;
}
/* If the custom font is for normal text */
body {
  font-family: "INSERT FONT NAME HERE", sans-serif !important;
  font-weight: normal;
}
/* If the custom font is for header text */
h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "INSERT FONT NAME HERE", sans-serif !important;
  font-weight: normal;
}
```

5. (30 minutes) Run through all the unit types the campaign is expected to display in -- e.g. banner/lightbox types, landscape/portrait, our landing page -- and make sure the new font doesn't break anything.

In total, budget about 1 hour to 90 minutes for this - assuming that the font doesn't mess up our styling by, say, being too wide, and necessitate more in-depth CSS tweaking, and also assuming you don't need to go through multiple back-and-forth rounds of approval with the client.
