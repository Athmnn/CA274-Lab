.PHONY: build clean

build: us-cities.txt.bak large-cities.txt states.txt new-york.txt northerly-cities.txt southerly-cities.txt half-cities.txt half-large-cities.txt half-new-york.txt
    @echo "Build complete."

us-cities.txt.bak: us-cities.txt
    cp $< $@

large-cities.txt: us-cities.txt
    awk -F ',' '$4 >= 1000000 {print}' $< > $@

states.txt: us-cities.txt
    awk -F ',' '{print $$3}' $< | sort | uniq > $@

new-york.txt: us-cities.txt
    awk -F ',' '$$3 == "New York" {print}' $< > $@

northerly-cities.txt: us-cities.txt
    awk -F ',' '$$6 > 40.7 {print}' $< > $@

southerly-cities.txt: us-cities.txt
    awk -F ',' '$$3 == "NY" && $$6 < 40.7 {next} {print}' $< > $@

half-cities.txt: us-cities.txt
    shuf -n $(($$(wc -l < $<) / 2)) $< > $@

half-large-cities.txt: half-cities.txt
    awk -F ',' '$$4 >= 1000000 {print}' $< > $@

half-new-york.txt: half-cities.txt
    awk -F ',' '$$3 == "NY" {print}' $< > $@

clean:
    rm -f large-cities.txt states.txt new-york.txt northerly-cities.txt southerly-cities.txt half-cities.txt half-large-cities.txt half-new-york.txt
