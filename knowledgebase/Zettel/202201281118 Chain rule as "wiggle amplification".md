The [[Chain rule (calculus)|chain rule]] is almost trivially true because:

- A function's [[Derivative (Calculus)|derivative]] gives "how much its output wiggles in response to an arbitrarily small input wiggle, over that wiggle."
- Thus, if you have $f(g(x))$, consider:
	- Rewrite as $tmp = g(x); f(tmp)$. 
	- $tmp$'s wiggle if $x$ is wiggled (i.e. $\frac{d}{dx}tmp$) is trivially $\frac{d}{dx}g(x)$. 
	- $f(tmp$)'s wiggle if $tmp$ is wiggled, i.e. $\frac{d}{d_{tmp}}f(tmp)$, is the same as $\frac{d}{dx}f(x)$ (just a different variable name)
	- So... if you wiggle $x$, $tmp$ will wiggle $\frac{d}{dx}g(x)$ times as much. $f(tmp)$ will wiggle by $\frac{d}{dx}f(x)$ times as much as $tmp$ wiggles.
	- by definition / change of notation, $\frac{d}{dx}f(x)=f'(x)$, $\frac{d}{dx}g(x)=g'(x)$
	- Thus, $\frac{d}{dx}f(g(x)) = f'(g(x))g'(x)$. Note that we're evaluating $f'$ at $g(x)$, not at $x$.