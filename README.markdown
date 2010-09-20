# OutOfContext

A Movable Type plugin

## What is it?

OutOfContext adds a block template tag of the same name to take a block of template code out of the context of current template. This means that context sensitive tags can be built with a fresh context.

## Use case

If you have a Category Entry Listing template and want to list the latest entries from all categories, you can wrap the mt:Entries block tag in the mt:OutOfContext block tag to remove the category context.

## Usage

This example is from a Monthly Entry Listing template. The first mt:Entries block will only output entries from the current month, the block wrapped in mt:OutOfContext will pull in all entries, regardless of the date.

    <mt:Entries>
      <article>
        <h1>
          <a href="<$mt:EntryPermalink$>"><$mt:EntryTitle$></a>
        </h1>
      </article>
    </mt:Entries>

    <mt:OutOfContext>
      <mt:Entries>
        <article>
          <h1>
            <a href="<$mt:EntryPermalink$>"><$mt:EntryTitle$></a>
          </h1>
        </article>
      </mt:Entries>
    </mt:OutOfContext