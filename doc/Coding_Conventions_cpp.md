# Coding conventions for C/C++
_Parts of this document are from the coding conventions used at the HE-Arc UAS_

## Repository organisation
**Recommended Repository structure**
| Repository | File type                             |
| ---------- | ------------------------------------- |
| .\\bin     | Executable files                      |
| .\\src     | Source files (.cpp, .c)               |
| .\\include | Header files (.hpp, .h)               |
| .\\doc     | Related documentation                 |
| .\\lib     | Project libraries                     |
| .\\res     | Project ressources (images, icons, …) |

## Naming conventions

### Class
**PascalCase & K&R style**
```cpp
class MyClass : public AnotherClassComposedOfSixWords {
    // …
}
struct MyStruct{
    // …
};
```

### Functions and methods
**camelCase & K&R style**
> Protected and private attributes accessed by getters and setters  
> Initialisation functions prefixed by "init"  
> Boolean function prefixed by "is" (On/Off, isUp, etc.)
```cpp
int getUserChoice() {
    …
}

void MyClass::setMyParam(int _param) {
    …
}

bool MyClass::initMyDatabse() {
    …
}
```

### Const
> Declared by `#define`, separate words with `_`, UPPERCASE
```cpp
#define MYCONST 1
#define NUMBER_OF_AXES 3
```

### Class member variables
> Commonly written in camelCase (at least by me).
> Use "common sense" for names.  
> Might want to decide for the use of the `m_` prefix, at the start of a project, preferably.

### Global variables
**Better to not use them in C++**
> Prefixed with `g_`  

### Ressources
> Might use the following prefixes :

| Prefix | Visual control                    |
| ------ | --------------------------------- |
| `btn`  | Button                            |
| `fld`  | Fields                            |
| `lb`   | Label                             |
| `bmp`  | Bitmap (images)                   |
| `sc`   | Scrollbar                         |
| `rb`   | Radio button (exclusive checkbox) |
| `chk`  | Multiple checkbox                 |
| `frm`  | Form                              |
| `cb`   | Combo box / Drop-down menu        |

## Indentation
**Tab space is equivalent to 4 spaces.**  
**Indentation can use Allman, K&R, Whitesmith indentation styles, coherence in a project is the most important.**

## Organisation and comments
Name of class files : `Class.cpp` & `Class.hpp` or `class.cpp` & `class.hpp`
### Prefix comment for :
**`.h/.hpp` files (class)**  
```cpp
// Description of the class
// Author(s):   <Name of the author>
// Version:     <Current version>
```

**`.c/.cpp` files (_each_ methods)**  
_Might want to modify this part_
```cpp
// Name of the function
// Description of the function
//
// @param type param1 : Description of the parameter "param1"
// @param type param2 : Description of the parameter "param2"
// @return description of the returned value
```

Might use a documentation generator that would override this
> (don't really know of a good one, but one example would be Doxygen)

## Other remarks
- In the case that a framework is used, the conventions of the framework might override these conventions.
- Comment for subtilities & complexity in code
- Comment in real-time, not at the end
- Comment all files (`.c .cpp .h .hpp`)
- A comment should be concise, useful (doesn't repeat the code), in english, necessary. [cprogramming.com : comments](https://www.cprogramming.com/tutorial/comments.html)
- Use DRY principle, factorise code that is used slightly differently in multiple functions into methods/functions.
- Use KISS principle, prefer multiple easy functions (macros?) rather than long and convoluted functions.
- Variable names have to be Descriptive, Concise and Clear
- Other ressources include :
    - Code smell article on Wikipedia
    - Object oriented design article on Wikipedia