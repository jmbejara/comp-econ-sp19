
# coding: utf-8

# In[1]:


# Run the cell below to add section numbering


# In[2]:


get_ipython().run_cell_magic('HTML', '', '<style>\nbody {\n  counter-reset: section subsection;\n}\n\nh1 {\n  counter-reset: subsection;\n}\n\nh1:before {\n    counter-increment: section;\n    content: "" counter(section) ". ";\n}\n\nh2:before {\n    counter-increment: subsection;\n    content: counter(section) "." counter(subsection) " ";\n}\n</style>')


# # Scoping Rules in Python
# 
# One step in *really* learning Python, and a first step in understanding any programming language, is to understand the language's <a href='https://en.wikipedia.org/wiki/Scope_(computer_science)'>scoping rules</a>. A discussion of scoping in Python can be found on <a href='https://en.wikipedia.org/wiki/Scope_(computer_science)#Python'>Wikipedia</a>. A nice mnemonic device for understanding scopes in Python can be found on stack exchange. Check out this answer (https://stackoverflow.com/a/292502/1411791) to this question (https://stackoverflow.com/q/291978/1411791).
# 
# 
# Here are a few examples to see this in action.
# 
# ## Variables Defined in Functions Stay in Functions

# In[3]:


# Define a variable `x` in a function
def f():
    x = 3
    
# Execute the function
f()


# The code below results in an error since Python can't find any definition for the variable `x`. It was defined in `f` and it stays in `f`.

# In[4]:


x


# ## The scope existing within a function can read but not write to variables in the global scope
# 
# In this example, we define a variable `y` in the global namespace. I define functions `g` and `h` that use `y`. `g` uses `y`, but only reads it. `h` uses `y` but tries to write to it. 

# In[5]:


# Code in the global namespace
y = "I'm in the global namespace"

def g():
    # Code within the scope of the function `g`
    new_message = y + '!!!!!!'
    print(new_message)

g()


# `g` was successful in reading `y`. Now, I define `h`. `h` will try to overwrite `y`. What happens instead is that a new variable called `y` is created that exists within the scope of the function `h`. When `h` finishes executing, that version of `y` disappears. We will see that the version of `y` existing in the global namespace continues to exist as it did before `h` was executed.

# In[6]:


# Code in the global namespace
y = "I'm in the global namespace"

def h():
    # Code within the scope of the function `h`
    
    # Try to overwrite `y`
    y = 'This message was created in the scope of `h`'
    
    # It now appears that we were successful in writing to `y`
    print(y)


# In[7]:


# The function prints the `y` within the scope of `h`
h()


# In[8]:


# This prints the `y` from the global namespace
y


# Note that the version of `y` that exists within `h` only exists while `h` is executing. It is deleted when the function finishes executing and is redefined every time that the function is called. There are things called iterators that have local variables that persist that you can read about if interested.
# 
# Now, consider the code below that is a slight variation on what we did with `h` above. Here, I'm trying to print `y` from the global namespace before defining the local `y`. This will actually result in an error. Python knows that I will be defining `y` locally within `h` and so it won't let me do this

# In[9]:


# Code in the global namespace
y = "I'm in the global namespace"

def h():
    # Code within the scope of the function `h`
    
    # Try to read `y` defined in the global namespace before defining local `y`
    print(y)
    
    # Now we try to overwrite `y`
    y = 'This message was created in the scope of `h`'
    
    # It now appears that we were successful in writing to `y`
    print(y)


# In[10]:


# The code won't result in an error until I actually try to run it
h()


# ### The `global` keyword
# 
# Note that you can use the `global` keyword to let Python know that you want a function to use a variable from the global namespace rather than creating a local variable. I demonstrate this below. However, *don't ever do this.* Using `global` is almost always the wrong thing to do and is bad coding practice. See this stack overflow answer about [Why Global Variables Are Evil](https://stackoverflow.com/q/19158339/1411791).

# In[11]:


# Code in the global namespace
y = "I'm in the global namespace"

def h():
    # Don't ever do this
    global y
    
    # Try to read `y` defined in the global namespace before defining local `y`
    print(y)
    
    # Now we try to overwrite `y`
    y = 'This message was created in the scope of `h`'
    
    # It now appears that we were successful in writing to `y`
    print(y)


# In[12]:


h()


# In[13]:


# Notice that the variable `y` in the global scope was changed by stuff that happened within the function `h`
y


# ### Note: A function reads the global namespace variable every time it's run
# 
# Note that if the variable is being read from the global namespace from within the function's scope, it is read every time the function is run. You might think that the function reads it once and the data is stored in the function's definition, but it is actually re-read every time. Because of this, you can actually define a function with variables that are not yet defined.

# In[14]:


# Clear definition of `z` if it exists
try:
    del z
except NameError:
    pass


# In[15]:


def fun(x):
    print(z, x)


# In[ ]:


# This results in an error, because z is not yet defined
fun(2)


# In[16]:


# Now that z is defined, it works
z = 'hey'
fun(2)


# In[17]:


# Change z. The function's behavior changes as a result
z = 'you'
fun(2)


# In[ ]:


# Clear definition of `z` if it exists
try:
    del zzz
except NameError:
    pass

# The same holds for inline functions (also called anonymous functions or 'lambda' functions)
inline_fun = lambda x: print(zzz, x)


# In[18]:


inline_fun(2)


# In[ ]:


zzz = 'hey'
inline_fun(2)


# In[19]:


zzz = 'you'
inline_fun(2)

