class House
    def initialize(pirate_mode=false, random_lines=false, random_phrases=false)
        @pirate_mode = pirate_mode
        if random_phrases
            @phrases = RandomPhraseGenerator.new.phrases
        else
            @phrases = PhraseGenerator.new.phrases
        end

        if random_lines
            @phrases.shuffle!(random: Random.new(1))
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

class PhraseGenerator
    def initialize
        @subjects = [
            "malt",
            "rat",
            "cat",
            "dog",
            "cow with the crumpled horn",
            "maiden all forlorn",
            "man all tattered and torn",
            "priest all shaven and shorn",
            "rooster that crowed in the morn",
            "farmer sowing his corn",
            "horse and the hound and the horn"
        ]

        @verbs = [
            "lay in",
            "ate",
            "killed",
            "worried",
            "tossed",
            "milked",
            "kissed",
            "married",
            "woke",
            "kept",
            "belonged to"
        ]
    end

    def phrases
        11.times.map {|i| "the #{@subjects[i]} that #{@verbs[i]}"}
    end
end

class RandomPhraseGenerator < PhraseGenerator
    def initialize
        super
        @subjects.shuffle!(random: Random.new(1))
        @verbs.shuffle!(random: Random.new(1))
    end
end