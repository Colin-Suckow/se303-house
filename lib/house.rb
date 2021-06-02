class House
    def initialize(pirate_mode=false, random_lines=false)
        @pirate_mode = pirate_mode
        @phrases = [
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
        if random_lines
            @phrases.shuffle!(random: Random.new(rand(1)))
        end
    end

    def line(line_number)
        intro + (line_number - 2).downto(0).map {|i| " #{@phrases[i]}"}.join + " the house that Jack built.\n"        
    end

    def intro
        if @pirate_mode
            "Thar be"
        else
            "This is"
        end
    end

    def recite
        (1..12).reduce("") { |poem, x| poem + line(x) + (x != 12 ? "\n" : "") }
    end
end