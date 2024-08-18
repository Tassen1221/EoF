NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 36
NDefines.NGame.GAME_SPEED_SECONDS = { 0.5, 0.3, 0.2, 0.1, 0.0 }	-- game speeds for each level. Must be 5 entries with last one 0 for unbound

NDefines.NDiplomacy.RESOURCE_SENT_AUTONOMY_DAILY_FACTOR = 0.0005-- If puppet provides resources to its master they increasy their autonomy by the resources factored by this

NDefines.NCountry.BASE_FUEL_GAIN_PER_OIL = 0.2			-- base amount of fuel gained hourly per excess oil
NDefines.NCountry.SURRENDER_LIMIT_REDUCTION_PER_COLLABORATION = 0 	--each percent of collaboration will lower surrender limit by this percentage

NDefines.NMilitary.UNIT_LEADER_USE_NONLINEAR_XP_GAIN = false	-- Whether unit leader XP gain is scaled by 1/<nr_of_traits>
NDefines.NMilitary.MAX_NUM_TRAITS = 8				-- cant have more, -1 to disable

NDefines.NMilitary.MAX_DIVISION_BRIGADE_WIDTH = 6		-- Max width of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_BRIGADE_HEIGHT = 5		-- Max height of regiments in division designer.
NDefines.NMilitary.MIN_DIVISION_BRIGADE_HEIGHT = 4		-- Min height of regiments in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_WIDTH = 2		-- Max width of support in division designer.
NDefines.NMilitary.MAX_DIVISION_SUPPORT_HEIGHT = 7		-- Max height of support in division designer.

NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 0 	--Base cost to unlock a regiment slot,
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 0	--Base cost to change a regiment column.
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 0 		--Base cost to unlock a support slot

NDefines.NMilitary.SUPPLY_GRACE = 120				-- troops always carry 5 days of food and supply

NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.060	-- global damage modifier... but some equipment is returned at end of battles see : EQUIPMENT_COMBAT_LOSS_FACTOR
NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.048	-- global damage modifier

NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.028	-- air global damage modifier
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.028	-- global damage modifier

NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY = -1		-- over combat width penalty per %.
NDefines.NMilitary.COMBAT_OVER_WIDTH_PENALTY_MAX = -0.15	-- over combat width max (when you cant join no more).
NDefines.NMilitary.COMBAT_STACKING_START = 2			-- at what nr of divisions stacking penalty starts
NDefines.NMilitary.COMBAT_STACKING_EXTRA = 1                    -- extra stacking from directions
NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.05		-- how much stacking penalty per division

NDefines.NMilitary.TRAINING_ATTRITION = 0		  	-- amount of extra attrition from being in training
NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 6.0

NDefines.NMilitary.RECON_SKILL_IMPACT = 10				-- how many skillpoints is a recon advantage worth when picking a tactic.
NDefines.NMilitary.INITIATIVE_PICK_COUNTER_ADVANTAGE_FACTOR  = 1	-- advantage per leader level for picking a counter

NDefines.NMilitary.SLOWEST_SPEED = 1

NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_IMPACT = -0.3		-- effect on defense due to enemy air superiorty
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_DEFENSE = 0.6		-- more AA attack will approach this amount of help (diminishing returns)
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_DEFENSE_STEEPNESS = 75 -- how quickly defense approaches the max impact diminishing returns curve
NDefines.NMilitary.ENEMY_AIR_SUPERIORITY_SPEED_IMPACT = -0.3	-- effect on speed due to enemy air superiority

NDefines.NMilitary.ANTI_AIR_TARGETTING_TO_CHANCE = 0.02		-- Balancing value to determine the chance of ground AA hitting an attacking airplane, affecting both the effective average damage done by AA to airplanes, and the reduction of damage done by airplanes due to AA support
NDefines.NMilitary.ANTI_AIR_ATTACK_TO_AMOUNT = 0.003		-- Balancing value to convert equipment stat anti_air_attack to the random % value of airplanes being hit.
NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.9	-- Balancing value to convert equipment stat anti_air_attack to the damage reduction modifier apply to incoming air attacks against units with AA.
NDefines.NAir.ANTI_AIR_MAXIMUM_DAMAGE_REDUCTION_FACTOR = 0.90	-- Maximum damage reduction factor applied to incoming air attacks against units with AA.

NDefines.NAir.COMBAT_DAMAGE_SCALE = 0.25			-- Higher value = more shot down planes
NDefines.NAir.COMBAT_DAMAGE_SCALE_CARRIER = 20			-- same as above but used inside naval combat for carrier battles

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2	-- extra damage dice if our armor outclasses enemy
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 6	-- extra damage dice if our armor outclasses enemy

NDefines.NMilitary.PIERCING_THRESHOLDS = {			-- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
		1.00,
		0.90,
		0.80,
		0.70,
		0.60,
		0.50,
		0.40,
		0.30,
		0.20,
		0.00, 						--there isn't much point setting this higher than 0
	}
NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {		-- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
		1.00,
		0.90,
		0.80,
		0.70,
		0.60,
		0.50,
		0.40,
		0.30,
		0.20,
		0.10,
	}

NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.3			-- how to weight in highest armor & pen vs the division average
NDefines.NMilitary.PEN_VS_AVERAGE = 0.3

NDefines.NMilitary.DAMAGE_SPLIT_ON_FIRST_TARGET = 0.6		--% of damage dealt to the first target in a combat. The rest will be split amongst subsequent targets. Modifiers can affect this up to a maximum of 0.9. That value must not be exposed as a define.

NDefines.NCharacter.POLITICAL_ADVISOR_SLOTS_IN_MENU = 6		--For Alert manager to count the number of Political Advisor Slots in the UI

NDefines.NProduction.BASE_FACTORY_SPEED_MIL = 4.5		-- Base factory speed multiplier (how much hoi3 style IC each factory gives).

NDefines.NProduction.PRODUCTION_RESOURCE_LACK_PENALTY = -0.005	-- Penalty decrease while lack of resource per factory

NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 0		-- XP cost for adding a new equipment module in an empty slot when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 0	-- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 0	-- XP cost for converting one equipment module to a related module when creating an equipment variant.
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 0	-- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.

NDefines.NProduction.MINIMUM_NUMBER_OF_FACTORIES_TAKEN_BY_CONSUMER_GOODS_VALUE = 0		-- The minimum number of factories we have to put on consumer goods, by value.
NDefines.NProduction.BASE_LICENSE_IC_COST = 0			-- Base IC cost for lended license
NDefines.NProduction.LICENSE_IC_COST_YEAR_INCREASE = 0		-- IC cost equipment for every year of equipment after 1936

NDefines.NProduction.MIN_POSSIBLE_TRAINING_MANPOWER = 1000000	-- How many deployment lines minimum can be training

NDefines.NProduction.BASE_LAND_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.3			-- Fraction of the chassis industry cost which is always included in the conversion cost.

NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.1		-- Conversion scale for planes to air supply

NDefines.NCountry.AIR_VOLUNTEER_PLANES_RATIO = 0		-- Ratio for volunteer planes available for sending in relation to sender air force
NDefines.NCountry.AIR_VOLUNTEER_BASES_CAPACITY_LIMIT = 1	-- Ratio for volunteer planes available for sending in relation to receiver air base capacity

NDefines.NCountry.REINFORCEMENT_MANPOWER_DELIVERY_SPEED = 50.0	-- Modifier for army manpower reinforcement delivery speed (travel time)

NDefines.NDiplomacy.VOLUNTEERS_PER_TARGET_PROVINCE = 0		-- Each province owned by the target country contributes this amount of volunteers to the limit.
NDefines.NDiplomacy.VOLUNTEERS_PER_COUNTRY_ARMY = 0		-- Each army unit owned by the source country contributes this amount of volunteers to the limit.

NDefines.NBuildings.MAX_SHARED_SLOTS = 50			-- Max slots shared by factories
NDefines.NBuildings.AIRBASE_CAPACITY_MULT = 100			-- Each level of airbase building multiplied by this, gives capacity (max operational value). Value is int. 1 for each airplane.

NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 2.0			-- Balancing value to convert damage ( naval_strike_attack * hits ) to Strength reduction.
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 3.0			-- Balancing value to convert damage ( naval_strike_attack * hits ) to Organisation reduction.
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 4.0		-- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively)

NDefines.NNavy.BASE_CARRIER_SORTIE_EFFICIENCY = 0.3		-- factor of planes that can sortie by default from a carrier

NDefines.NNavy.CARRIER_STACK_PENALTY = 0			-- The most efficient is 4 carriers in combat. 5+ brings the penalty to the amount of wings in battle.
NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.02		-- Each carrier above the optimal amount decreases the amount of airplanes being able to takeoff by such %.

NDefines.NNavy.MISSION_SUPREMACY_RATIOS = {
		0.0, -- HOLD
		1.0, -- PATROL
		0.1, -- STRIKE FORCE
		0.3, -- CONVOY RAIDING
		0.3, -- CONVOY ESCORT
		0.0, -- MINES PLANTING
		0.0, -- MINES SWEEPING
		0.0, -- TRAIN
		0.0, -- RESERVE_FLEET
		0.1, -- NAVAL_INVASION_SUPPORT
	}

NDefines.NNavy.BASE_POSITIONING = 0.8				-- base value for positioning

NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 3.0				-- this screen ratio to num capital/carriers is needed for full screening beyond screen line
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.2				-- this screen ratio to num convoys is needed for full screening beyond screen line
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CARRIERS = 4.0				-- this capital ratio to num carriers is needed for full screening beyond screen line
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.1				-- this capital ratio to num convoys is needed for full screening beyond screen line

NDefines.NNavy.TRAINING_ACCIDENT_CHANCES = 0			-- Chances one ship get damage each hour while on training

NDefines.NNavy.HIT_PROFILE_MULT = 50.0				-- multiplies hit profile of every ship

NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.5			-- Vanilla is 0.25
NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.01	-- heavy gun attack value is divided by this value * 100 and added to shore bombardment modifier
NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.005	-- light gun attack value is divided by this value * 100 and added to shore bombardment modifier

-- defines that control submarine visibility
NDefines.NNavy.NAVAL_COMBAT_SUB_DETECTION_FACTOR = 1.0			-- balance value for sub detection in combat by ships
NDefines.NNavy.SUBMARINE_HIDE_TIMEOUT = 20				-- Amount of in-game-hours that takes the submarine (with position unrevealed), to hide.
NDefines.NNavy.SUBMARINE_REVEALED_TIMEOUT = 16				-- Amount of in-game-hours that makes the submarine visible if it is on the defender side.
NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 100			-- Base factor for submarine detection. It's modified by the difference of a spotter's submarines detection vs submarine visibility. Use this variable for game balancing. setting this too low will cause bad spotting issues.
NDefines.NNavy.SUBMARINE_REVEAL_POW = 2.0				-- A scaling factor that is applied to the reveal chance in order to make large differences in detection vs visibility more pronounced
NDefines.NNavy.SUBMARINE_BASE_TORPEDO_REVEAL_CHANCE = 0.035		-- Chance of a submarine being revealed when it fires. 1.0 is 100%. this chance is then multiplied with modifier created by comparing firer's visibiility and target's detection

-- those two work together in the formula f(x) = Y(x/(x+X)) where Y is MAX and X is SLOPE
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_MAX = 10.0
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_SLOPE = 10.0		-- lower means sharper curve (ramps up very fast, then flatten out very fast). Must be >0

NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_EXTERNAL_FACTOR = 1.0				-- Factor applied to the stats of external air planes
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_INTERNAL_EFFICIENCY_FACTOR = 1.0			-- Factor of Carrier's sortie efficiency on the stats bellow
NDefines.NNavy.NAVAL_COMBAT_AIR_AGILITY_TO_SUB_DETECTION = 0.0					-- Factor to apply to the agility of air planes active in a naval combat to deduce their contibution to sub detection
NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_ATTACK_TO_SUB_DETECTION = 0.0				-- Same, but for strike attack (aka naval attack)
NDefines.NNavy.NAVAL_COMBAT_AIR_STRIKE_TARGETING_TO_SUB_DETECTION = 0.0				-- Same, but for strike targeting (aka naval targeting)
NDefines.NNavy.NAVAL_COMBAT_AIR_MAX_SPEED_TO_SUB_DETECTION = 0.0				-- Same, but for Max Speed
NDefines.NNavy.NAVAL_COMBAT_AIR_PLANE_COUNT_TO_SUB_DETECTION = 1.0				-- Factor applied to the number of active plane in a naval combat to deduce their contribution to sub detection
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_DECAY_RATE = 1.0					-- Factor to decay the value of sub detection contributed by planes on the last hour. Note: the maximum value between the decayed value and the newly computed one is taken into account. A decay rate of 1 means that nothing is carried over, the previous value is zerod out. A decay rate of 0 means that the previous value is carried over as is.
NDefines.NNavy.NAVAL_COMBAT_AIR_SUB_DETECTION_FACTOR = 0.0					-- A global factor that applies after all others, right before the sub detection contributed by plane is added to the global sub detection of a combatant

-- defines that are used for supply reach for built nodes
NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.NODE_STARTING_PENALTY_PER_PROVINCE = 0.30
NDefines.NSupply.NODE_ADDED_PENALTY_PER_PROVINCE = 0.50

-- defines that are used for supply reach for dockyards
NDefines.NSupply.NAVAL_BASE_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.NAVAL_BASE_STARTING_PENALTY_PER_PROVINCE = 1.1
NDefines.NSupply.NAVAL_BASE_ADDED_PENALTY_PER_PROVINCE = 0.50

-- Node Flow (i.e. province caps) increase by this amount per railway level of the node's bottleneck
NDefines.NSupply.NODE_FLOW_BONUS_PER_RAIL_LEVEL = 0.6

-- defines that are used for supply reach for floating harbors
NDefines.NSupply.FLOATING_HARBOR_INITIAL_SUPPLY_FLOW = 3.0
NDefines.NSupply.FLOATING_HARBOR_STARTING_PENALTY_PER_PROVINCE = 0.8
NDefines.NSupply.FLOATING_HARBOR_ADDED_PENALTY_PER_PROVINCE = 0.5

NDefines.NSupply.FLOATING_HARBOR_BASE_SUPPLY = 15.0		-- supply given by a floating harbor
NDefines.NSupply.FLOATING_HARBOR_BASE_DURATION = 21		-- duration of a full hp floating harbor
NDefines.NSupply.FLOATING_HARBOR_DURATION_RATIO_AT_MIN_HP = 0.0					-- duration mult for a harbor that was reduced to 0 hp

-- The range bonus added to a fully motorized hub. This supply is added on top of the XXX_INITIAL_SUPPLY_FLOW defined above.
NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_BONUS = 3.0
-- How many trucks does it cost to fully motorize a hub
NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 120.0
-- For each additional level of motorization on a hub (i.e. contry with set motoriazation) reduce max bonus for next level by this amount
NDefines.NSupply.SUPPLY_HUB_MOTORIZATION_MARGINAL_EFFECT_DECAY = 1.0


-- used for calculating "flow" for railways.
NDefines.NSupply.RAILWAY_BASE_FLOW = 15.0			-- how much base flow railway gives when a node connected to its capital/a naval node by a railway
NDefines.NSupply.RAILWAY_FLOW_PER_LEVEL = 5.0			-- how much additional flow a railway level gives
NDefines.NSupply.RAILWAY_FLOW_PENALTY_PER_DAMAGED = 3.0		-- penalty to flow per damaged railway
NDefines.NSupply.RAILWAY_MIN_FLOW = 15.0			-- minimum railway flow can be reduced to

-- used for calculating "flow" from a naval node to another naval node when it is connected via a convoy route
NDefines.NSupply.NAVAL_BASE_FLOW = 10.0				-- max output/input of a naval node is limited by this base value + additional ratio for each level
NDefines.NSupply.NAVAL_FLOW_PER_LEVEL = 3.0			-- max output/input of a naval node is limited by previous base value + this define per its level
