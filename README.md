# Skylee's Typst Homework Template

A template & library for typesetting homework assignment submissions in Typst.

## Installation

To install, download the [`skylee-hw.typ`](./skylee-hw.typ) file and import it into your Typst document.

## Usage

Refer to [`example.typ`](./example.typ) and [`example.pdf`](./example.pdf) for sample usage.

1. Import the required functions from the [`skylee-hw.typ`](./skylee-hw.typ) file:
   
   ```typst
   #import "skylee-hw.typ": *
   ```

1. Set up the document using a show rule and the `skylee-hw()` function:
   
   ```typst
   #show: skylee-hw.with(
     institute: [Course institute],
     course: [Course name],
     session: [Course session],
     title: [Assignment title],
     author: [Author name],
   )
   ```
   
   This will generate a document header with the specified information and the current date.

### Problems

To format a problem, use the `problem()` function:

```typst
#problem[
  Problem text
]
```

The problems will be automatically numbered.

### Multi-part problems

For multi-part problems, employ the `parts()` function:

```typst
#problem[
  Problem text
  #parts[
    Part 1 text
  ][
    Part 2 text
  ]
]
```

The parts will also be automatically numbered.

### Solutions

To format solutions, use the `solution()` function:

```typst
#problem[
  Problem text
  #solution[Solution text]
]
```

For multi-part problems, you can also use the `problem()` function under each part.

```typst
#problem[
  Problem text
  #parts[
    Part 1 text
    #solution[Part 1 solution]
  ][
    Part 2 text
    #solution[Part 2 solution]
  ]
]
```