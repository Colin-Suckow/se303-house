

class House
    PHRASES = [
        "the house that Jack built",
        "the malt that lay in",
        "the rat that ate",
        "the cat that killed",
        "the dog that worried",
        "the cow with the crumpled horn that tossed",
        "the maiden all forlorn that milked",
        "the man all tattered and torn that kissed",
        "the priest all shaven and shorn that married",
        "the rooster that crowed in the morn that woke",
        "the farmer sowing his corn that kept",
        "the horse and the hound and the horn that belonged to"
    ]

    def line(line_number)
        intro + (line_number - 1).downto(0).map {|i| " #{PHRASES[i]}"}.join + ".\n"        
    end

    def intro
        "This is"
    end

    def recite
        (1..12).reduce("") { |poem, x| poem + line(x) + (x != 12 ? "\n" : "") }
    end
end