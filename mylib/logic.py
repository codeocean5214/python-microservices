
import wikipedia
wikipedia.set_lang("en")

def wiki() : 
    try:
        results = wikipedia.search("Python programming")
        print("Search results:", results)
        summary = wikipedia.summary("Python (programming language)", sentences=2)
        print("\nSummary:\n", summary)
    except wikipedia.exceptions.DisambiguationError as e:
        print("Disambiguation error. Options:", e.options)
    except wikipedia.exceptions.PageError:
        print("Page not found.")
    except Exception as e:
        print("An error occurred:", e)
