

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
        case line_number
        when 1
            intro + PHRASES[0] + ".\n"
        when 2
            intro + PHRASES[1] + " " + PHRASES[0] + ".\n"
        when 3
            intro + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] + ".\n"
        when 4
            intro + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 5
            intro + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 6
            intro + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 7
            intro + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 8
            intro + PHRASES[7] + " " + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 9
            intro + PHRASES[8] + " " + PHRASES[7] + " " + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 10
            intro + PHRASES[9] + " " + PHRASES[8] + " " + PHRASES[7] + " " + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 11
            intro + PHRASES[10] + " " + PHRASES[9] + " " + PHRASES[8] + " " + PHRASES[7] + " " + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        when 12
            intro + PHRASES[11] + " " + PHRASES[10] + " " + PHRASES[9] + " " + PHRASES[8] + " " + PHRASES[7] + " " + PHRASES[6] + " " + PHRASES[5] + " " + PHRASES[4] + " " + PHRASES[3] + " " + PHRASES[2] + " " + PHRASES[1] + " " + PHRASES[0] +".\n"
        end
    end

    def intro
        "This is "
    end

    def recite
        (1..12).reduce("") { |poem, x| poem + line(x) + (x != 12 ? "\n" : "") }
    end
end